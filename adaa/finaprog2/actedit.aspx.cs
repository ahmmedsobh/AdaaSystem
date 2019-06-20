using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class actedit : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());
    SqlCommand com = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        com.CommandText = "select distinct act_name , sa.Act_id from Activities a , [st-Act] sa where a.Act_id = sa.Act_id";
        com.Connection = con;
        con.Open();
        SqlDataReader dr = com.ExecuteReader();
        DropDownList1.DataSource = dr;
        DropDownList1.DataTextField = ("act_name");
        DropDownList1.DataValueField = ("act_id");
        DropDownList1.DataBind();
        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        com.CommandText = "update Activities set Act_name ='" + TextBox1.Text + "' where Act_id =" + DropDownList1.SelectedValue;
        com.Connection = con;
        con.Open();
        int dr = com.ExecuteNonQuery();
        con.Close();

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}