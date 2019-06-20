using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class behset : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            Response.Redirect("behsetadd.aspx");
        }
        else if (RadioButton2.Checked)
        {
            Response.Redirect("behedit.aspx");
        }
        else if (RadioButton3.Checked)
        {
            Response.Redirect("behdel.aspx");
        }
        else
        {
            Response.Write("<script>alert('Pelase select process');</script>");
        }
    }
}