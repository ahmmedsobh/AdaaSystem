using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class actdel : System.Web.UI.Page
{
   SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            SqlCommand comm = new SqlCommand();
            comm.CommandText = "select Act_name,Act_Id from Activities";

            comm.Connection = con;
            con.Open();
            SqlDataReader dr = comm.ExecuteReader();
            DropDownList1.DataSource = dr; 
            DropDownList1.DataTextField = "Act_name";
            DropDownList1.DataValueField = "Act_Id";
            DropDownList1.DataBind();
            con.Close();
       }
    }
}