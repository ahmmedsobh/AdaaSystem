using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class selectperson : System.Web.UI.Page
{
   // SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx?name=" + "Instructor");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx?name=" + "Supervisor");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx?name=" + "Guardian");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx?name=" + "Student");
    }
}