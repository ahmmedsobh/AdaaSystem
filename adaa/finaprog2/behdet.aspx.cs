using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class behdet : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());
    SqlCommand com = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            com.CommandText = "select sc.crs_id ,crs_name , crs_degree from [st-crs] sc , courses c where c.crs_id = sc.crs_id and st_id ="+Session["ID"];
            com.Connection = con;
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            DropDownList1.DataSource = dr;
            DropDownList1.DataTextField = "crs_name";
            DropDownList1.DataValueField = "crs_id";
            DropDownList1.DataBind();
            con.Close();

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        com.CommandText = "select b.bdname as 'Behavior Day', beh_degree as 'Behavior Degree',b.total_degree  as 'Total Degree' from behavier b , [student behavier] sb ,courses c where b.beh_id = sb.beh_id and c.crs_id = b.crs_id and c.crs_id =" + DropDownList1.SelectedValue + " and st_id =" + Session["ID"];
        com.Connection = con;
        con.Open();
        SqlDataReader dr1 = com.ExecuteReader();
        GridView1.DataSource = dr1;
        GridView1.DataBind();
        con.Close();
    }
}