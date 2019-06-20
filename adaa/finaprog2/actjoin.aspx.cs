using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class actjoin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());
    SqlCommand com = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            //select activity
            com.CommandText = "select distinct act_name , sa.Act_id from Activities a , [st-Act] sa where a.Act_id = sa.Act_id and adm_id="+Session["ID"];
            com.Connection = con;
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            DropDownList4.DataSource = dr;
            DropDownList4.DataTextField = ("act_name");
            DropDownList4.DataValueField = ("act_id");
            DropDownList4.DataBind();
            con.Close();
        }
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        DropDownList3.Enabled = false;
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            com.CommandText = "select distinct  st_fname+' '+st_lname  as fullname ,sa.st_id from student s , [st-Act] sa where s.st_id = sa.st_id and Act_id =" + DropDownList4.SelectedValue;
            com.Connection = con;
            con.Open();
            SqlDataReader dr1 = com.ExecuteReader();
            CheckBoxList1.DataSource = dr1;
            CheckBoxList1.DataTextField = ("fullname");
            CheckBoxList1.DataValueField = ("st_id");
            CheckBoxList1.DataBind();
            con.Close();

        }
        else if (RadioButton2.Checked)
        {
            com.CommandText = "select distinct  st_fname+' '+st_lname as fullname ,sa.st_id from student s , [st-Act] sa where s.st_id = sa.st_id and s.Dept_id =" + DropDownList3.SelectedValue + " and Act_id =" + DropDownList4.SelectedValue;
            com.Connection = con;
            con.Open();
            SqlDataReader dr2 = com.ExecuteReader();
            //  DropDownList4.DataSource = dr2;
            CheckBoxList1.DataSource = dr2;
            CheckBoxList1.DataTextField = ("fullname");
            CheckBoxList1.DataValueField = ("st_id");
            CheckBoxList1.DataBind();
            con.Close();
        }
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked)
        {
            DropDownList3.Enabled = true;
            com.CommandText = "select distinct dept_name , s.dept_id  from Departments d ,[st-Act] sa, student s where d.Dept_id = s.Dept_id and s.st_id = sa.st_id ";
            com.Connection = con;
            con.Open();
            SqlDataReader dr3 = com.ExecuteReader();
            DropDownList3.DataSource = dr3;
            DropDownList3.DataTextField = ("dept_name");
            DropDownList3.DataValueField = ("dept_id");
            DropDownList3.DataBind();
            con.Close();
        }





    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        int boool;
        if (CheckBoxList1.SelectedItem.Selected)
            boool = 0;
        else
            boool = 1;

        com.CommandText = "update [st-Act] set Act_state =" + boool + " where st_id =" + CheckBoxList1.SelectedValue + " and Act_id =" + DropDownList4.SelectedValue;
        com.Connection = con;
        con.Open();
        int dr3 = com.ExecuteNonQuery();
        con.Close();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        //xxxxxxxxxxx
        if (CheckBox1.Checked)
        {
            
            com.CommandText = "update [st-Act] set act_state = 1 where st_id in (select distinct  sa.st_id from student s , [st-Act] sa where s.st_id = sa.st_id) and Act_id =" + DropDownList4.SelectedValue;
            com.Connection = con;
            con.Open();
            int up = com.ExecuteNonQuery();
            con.Close();
        }
    }
}