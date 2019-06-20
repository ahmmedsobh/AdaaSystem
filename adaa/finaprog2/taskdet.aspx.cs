using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class taskdet : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());
    SqlCommand com = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlCommand comm = new SqlCommand();
        //comm.CommandText = "select crs_name as 'Course Name',crs_degree as 'Course Degree' from courses c,[st-crs] sc where  sc.crs_id=c.crs_id and st_id=" + Session["ID"];
        //comm.Connection = con;
        //con.Open();
        //SqlDataReader dr = comm.ExecuteReader();
        //GridView1.DataSource = dr;
        //GridView1.DataBind();
        //con.Close();

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
        Label3.Visible = true;
        Label2.Visible = true;
        Label2.Text = DropDownList1.SelectedItem.ToString();
        com.CommandText = "select task_name as 'Task Name', task_state as 'Task State' from Task t , [student task] st , courses c where t.task_id = st.task_id and c.crs_id = t.crs_id and st_id =" + Session["ID"] + " and c.crs_id =" + DropDownList1.SelectedValue.ToString();
        com.Connection = con;
        con.Open();
        SqlDataReader dr1 = com.ExecuteReader();
        GridView1.DataSource = dr1;
        GridView1.DataBind();
        con.Close();
        Label4.Visible = true;
        //this is course degree label
        com.CommandText = "select crs_degree from [st-crs] where crs_id =" + DropDownList1.SelectedValue + " and st_id ="+Session["ID"];
        com.Connection = con;
        con.Open();
        double cd = Convert.ToDouble(com.ExecuteScalar());
        Label1.Text = cd.ToString();
        con.Close();


    }
}