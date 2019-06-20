using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class actdet : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand comm = new SqlCommand();
        comm.CommandText = "select a.Act_name 'Activities',s.Act_state 'Activity State' from Activities a,[st-Act] s where a.Act_id=s.Act_id and s.st_id="+Session["ID"];
        comm.Connection = con;
        con.Open();
        SqlDataReader dr = comm.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        con.Close();
    }
}