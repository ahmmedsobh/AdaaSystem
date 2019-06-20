using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class tasksetedit : System.Web.UI.Page
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
                DropDownList2.DataSource = da1;
                DropDownList2.DataTextField = "crs_name";
                DropDownList2.DataValueField = "crs_id";
                DropDownList2.DataBind();
                con.Close();
            }
       
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {//select task_name,task_id from Task where crs_id=
        Button1.Enabled = true;
        Label1.Text = "";
        TextBox1.Text = "";
        SqlCommand comm = new SqlCommand();
        comm.CommandText = "select task_name,task_id from Task where crs_id=" + DropDownList2.SelectedValue;
        comm.Connection = con;
        con.Open();
        SqlDataReader da1 = comm.ExecuteReader();
        DropDownList1.DataSource = da1;
        DropDownList1.DataTextField = "task_name";
        DropDownList1.DataValueField = "task_id";
        DropDownList1.DataBind();
        con.Close(); 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand comm = new SqlCommand();
        comm.CommandType = CommandType.StoredProcedure;
        comm.CommandText = "update_Task";
        comm.Connection = con;
        SqlParameter[] co = new SqlParameter[3];
        co[0] = new SqlParameter("@1task_name", DropDownList1.SelectedItem.ToString());
        co[1] = new SqlParameter("@crs_id", DropDownList2.SelectedValue);
        co[2] = new SqlParameter("@task_name", TextBox1.Text);
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
}