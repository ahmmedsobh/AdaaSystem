using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class behfin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());
    SqlDataAdapter adpter = new SqlDataAdapter();
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (this.IsPostBack == false)
            {
                SqlCommand comm = new SqlCommand();
                comm.CommandText = "select * from Class";
                comm.Connection = con;
                con.Open();
                SqlDataReader dr = comm.ExecuteReader();
                DropDownList1.DataSource = dr;
                DropDownList1.DataTextField = "Class_name";
                DropDownList1.DataValueField = "Class_id";
                DropDownList1.DataBind();
                con.Close();
                /// 
                comm.CommandText = "select d.Dept_id,Dept_name from Departments d,Dept_Ins i where d.Dept_id=i.Dept_id and i.ins_id =" + Session["ID"];
                comm.Connection = con;
                con.Open();
                SqlDataReader da = comm.ExecuteReader();
                DropDownList2.DataSource = da;
                DropDownList2.DataTextField = "Dept_name";
                DropDownList2.DataValueField = "Dept_id";
                DropDownList2.DataBind();
                con.Close();
            }
        }
        catch
        {

            Response.Write("<script>alert(' Error in Database OR Username or Password Wrong');</script>");
        }

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button2.Visible = false;
        GridView1.Visible = false;
        Label1.Visible = false;
        TextBox1.Visible = false;
        SqlCommand comm = new SqlCommand();
        comm.CommandText = "select distinct ic.crs_id,crs_name from [ins-crs] ic,courses c,[Dept-crs] dc where ic.crs_id=c.crs_id and dc.crs_id=c.crs_id and c.Class_id=" + DropDownList1.SelectedValue + "and dc.Dept_id=" + DropDownList2.SelectedValue + " and ins_id=" + Session["ID"];
        comm.Connection = con;
        con.Open();
        SqlDataReader da = comm.ExecuteReader();
        DropDownList3.DataSource = da;
        DropDownList3.DataTextField = "crs_name";
        DropDownList3.DataValueField = "crs_id";
        DropDownList3.DataBind();
        con.Close();
        DropDownList3.Items.Add("null");
        DropDownList4.Items.Clear();
        DropDownList4.Items.Add("null");
        DropDownList4.SelectedItem.Text = "null";
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button2.Visible = false;
        GridView1.Visible = false;
        Label1.Visible = false;
        TextBox1.Visible = false;
        SqlCommand comm = new SqlCommand();
        comm.CommandText = " select bdname,beh_id from behavier where crs_id=" + DropDownList3.SelectedValue;
        comm.Connection = con;
        con.Open();
        SqlDataReader da1 = comm.ExecuteReader();
        DropDownList4.DataSource = da1;
        DropDownList4.DataTextField = "bdname";
        DropDownList4.DataValueField = "beh_id";
        DropDownList4.DataBind();
        con.Close();
        DropDownList4.Items.Add("null");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button2.Visible = false;
        GridView1.Visible = false;
        Label1.Visible = false;
        TextBox1.Visible = false;
        DropDownList3.Items.Clear();
        DropDownList3.Items.Add("null");
        DropDownList3.SelectedItem.Text = "null";
        DropDownList4.Items.Clear();
        DropDownList4.Items.Add("null");
        DropDownList4.SelectedItem.Text = "null";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button2.Visible = true;
        Label1.Visible = true;
        TextBox1.Visible = true;
        TextBox1.Text = "";
        GridView1.Visible = true;
        SqlCommand comm = new SqlCommand();
        comm.CommandText = "select  concat(st_fname,' ',st_lname)as fullname,s.st_id,beh_degree from student s,behavier b,[student behavier] sb where s.st_id=sb.st_id and sb.beh_id=b.beh_id and b.crs_id=" + DropDownList3.SelectedValue + "and b.beh_id=" + DropDownList4.SelectedValue;
        comm.Connection = con;
        ds = new DataSet();
        adpter.SelectCommand = comm;
        adpter.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        ViewState.Add("ds", ds);
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            SqlCommand comm = new SqlCommand();
            comm.CommandText = " UPDATE [student behavier] SET beh_degree=@beh_degree WHERE beh_id=" + DropDownList4.SelectedValue;
            comm.Connection = con;
            comm.Parameters.AddWithValue("beh_degree", TextBox1.Text);
            con.Open();
            comm.ExecuteReader();
            con.Close();
        }
        SqlCommand com = new SqlCommand();
        com.CommandText = "select  concat(st_fname,' ',st_lname)as fullname,s.st_id,beh_degree from student s,behavier b,[student behavier] sb where s.st_id=sb.st_id and sb.beh_id=b.beh_id and b.crs_id=" + DropDownList3.SelectedValue + "and b.beh_id=" + DropDownList4.SelectedValue;
        com.Connection = con;
        ds = new DataSet();
        adpter.SelectCommand = com;
        adpter.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        ViewState.Add("ds", ds);
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //GridView1.Visible = true;
        ds = (DataSet)ViewState["ds"];
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = ds;
        GridView1.DataBind();
        ViewState["ds"] = ds;
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        ds = (DataSet)ViewState["ds"];
        GridView1.EditIndex = -1;
        GridView1.DataSource = ds;
        GridView1.DataBind();
        ViewState["ds"] = ds;
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        ds = (DataSet)ViewState["ds"];
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = ds;
        GridView1.DataBind();
        ViewState["ds"] = ds;
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        ds = (DataSet)ViewState["ds"];
        ds.Tables[0].Rows[e.RowIndex][2] = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].FindControl("TextBox2")).Text;
        ViewState["ds"] = ds;
        GridView1.DataSource = ds;
        GridView1.DataBind();
        SqlCommand comm = new SqlCommand();
        comm.CommandText = "UPDATE [student behavier] SET beh_degree=@beh_degree WHERE beh_id=@beh_id and st_id=@st_id";
        SqlParameter param1 = new SqlParameter("@beh_degree", SqlDbType.Int, 4, "beh_degree");
        SqlParameter param2 = new SqlParameter("@beh_id", DropDownList4.SelectedValue);
        SqlParameter param3 = new SqlParameter("@st_id", SqlDbType.Int, 4, "st_id");
        comm.Parameters.Add(param1);
        comm.Parameters.Add(param2);
        comm.Parameters.Add(param3);
        comm.Connection = con;
        adpter.UpdateCommand = comm;
        adpter.Update(ds);
        GridView1.EditIndex = -1;
        GridView1.DataSource = ds;
        GridView1.DataBind();
        ViewState["ds"] = ds;
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button2.Visible = false;
        GridView1.Visible = false;
        Label1.Visible = false;
        TextBox1.Visible = false;
    }
}
