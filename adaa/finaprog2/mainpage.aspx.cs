using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class mainpage : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());
    SqlCommand comm = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        //tasks
        //finish tasks 
        comm.CommandText = "select count(task_state) from [student task] where task_state = 'true' and  st_id =" + Session["ID"];
        comm.Connection = con1;
        con1.Open();
        Int32 num1 = Convert.ToInt32(comm.ExecuteScalar());
        con1.Close();

        //total of tasks
        comm.CommandText = "select count(task_state) from [student task] where st_id =" + Session["ID"];
        comm.Connection = con1;
        con1.Open();
        Int32 num2 = Convert.ToInt32(comm.ExecuteScalar());
        con1.Close();
        float res = num1 / (float)(num2) * 100;
        Label5.Text = res.ToString(".00");

        //behavior
        //behavior degree for student
        comm.CommandText = "select sum(beh_degree) from [student behavier] where st_id =" + Session["ID"];
        comm.Connection = con1;
        con1.Open();
        comm.ExecuteScalar();
        Int32 beh1 = Convert.ToInt32(comm.ExecuteScalar());
        con1.Close();

        //total of behavior degree
        comm.CommandText = "select sum(total_degree) from behavier where beh_id < =  (select count(beh_degree) from [student behavier] where st_id = "+Session["ID"]+")";
        comm.Connection = con1;
        con1.Open();
        Int32 beh2 = Convert.ToInt32(comm.ExecuteScalar());
        con1.Close();
        float res2 = beh1 / (float)(beh2) * 100;
        label7.Text = res2.ToString(".00");


        //activties
        //finish activityies
        comm.CommandText = "select COUNT(act_state) from [st-Act] where Act_state='true' and st_id ="+Session["ID"];
        comm.Connection = con1;
        con1.Open();
        Int32 act1 = Convert.ToInt32(comm.ExecuteScalar());
        con1.Close();

        //total of Activity degree
        comm.CommandText = "select COUNT(act_state) from [st-Act] where st_id =" + Session["ID"];
        comm.Connection = con1;
        con1.Open();
        Int32 act2 = Convert.ToInt32(comm.ExecuteScalar());
        con1.Close();
        float res3 = act1 / (float)(act2) * 100;
        Label6.Text = res3.ToString(".00");


        //performance degree

        float a = float.Parse(Label5.Text);
        //double b = double.Parse(Label6.Text);
        float c = float.Parse(label7.Text);
        float per = (a + c) / 2;
        Label4.Text = per.ToString(".00");
        
    }
}