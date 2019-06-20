using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class behsetadd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            SqlCommand comm = new SqlCommand();
            comm.CommandText = "select i.crs_id,crs_name from [ins-crs] i,courses c where i.crs_id=c.crs_id and ins_id=" + Session["ID"];
            comm.Connection = con;
            con.Open();
            SqlDataReader da1 = comm.ExecuteReader();
            DropDownList1.DataSource = da1;
            DropDownList1.DataTextField = "crs_name";
            DropDownList1.DataValueField = "crs_id";
            DropDownList1.DataBind();
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand comm = new SqlCommand();
        comm.CommandType = CommandType.StoredProcedure;
        comm.CommandText = "insert_behavier";
        comm.Connection = con;
        SqlParameter[] co = new SqlParameter[2];
        co[0] = new SqlParameter("@bdname",TextBox1.Text);
        co[1] = new SqlParameter("@crs_id", DropDownList1.SelectedValue);
        comm.Parameters.AddRange(co);
        con.Open();
        int x = comm.ExecuteNonQuery();

        if (x > -1)
            Label1.Text = x.ToString() + "affected rows";
        else
            Label1.Text = "no Data";
        con.Close();
        Button1.Enabled = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button1.Enabled = true;
        Label1.Text = "";
        TextBox1.Text = "";
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    }
    
}