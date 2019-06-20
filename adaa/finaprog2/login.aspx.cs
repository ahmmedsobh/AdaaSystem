using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["parcon"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        {
            switch (Request.QueryString["name"])
            {
                case "Supervisor":
                    SqlCommand cmnn = new SqlCommand("select * from [adminstor activities] a,users u where a.user_id=u.user_id and user_name='"+TextBox1.Text+"' and u.password='"+TextBox2.Text+"'", con);
                     con.Open();
                     SqlDataAdapter da;
                     DataTable dt = new DataTable();
                     da = new SqlDataAdapter(cmnn); 
                     da.Fill(dt);
                     con.Close();
                     if (dt.Rows.Count > 0)
                     { 
                    var cv1 = dt.Rows[0]["adm_id"].ToString();
                    Session.Add("ID", cv1);
                    if (cv1 != "")
                      {
                        Response.Redirect("activities.aspx");
                       }
                    else
                      {
                        Response.Write("<script>alert('Username or Password Wrong');</script>");
                      }
                     }
                     else
                     {
                         Response.Write("<script>alert('Username or Password Wrong');</script>");
                     }
                    break;
                    


                case "Instructor":
                     SqlCommand cmn= new SqlCommand("Select * From users Where user_name='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", con);
                     con.Open();
                     SqlDataAdapter d;
                     DataTable db = new DataTable();
                     d = new SqlDataAdapter(cmn); 
                     d.Fill(db);
                     con.Close();
                     if (db.Rows.Count > 0)
                     {
                         var cv2 = db.Rows[0]["ins_id"].ToString();
                         Session.Add("ID", cv2);
                         if (cv2 != "")
                         {
                          Response.Redirect("inspage.aspx");
                         }
                         else
                         {
                          Response.Write("<script>alert('Username or Password Wrong');</script>");
                         }
                     }
                     else
                     {
                         Response.Write("<script>alert('Username or Password Wrong');</script>");
                     }
                    break;





                case "Guardian":
                    SqlCommand cm = new SqlCommand("Select s.user_id,p.st_id From users s,Parent p Where user_name='" + TextBox1.Text + "'and password='" + TextBox2.Text + "' and s.user_id=p.user_id", con);
                     con.Open();
                     SqlDataAdapter dq;
                     DataTable dl = new DataTable();
                     dq = new SqlDataAdapter(cm); 
                     dq.Fill(dl);
                     con.Close();
                     if (dl.Rows.Count > 0)
                     {
                         var cv3 = dl.Rows[0]["st_id"].ToString();
                         Session.Add("ID", cv3);
                         if (cv3 != "")
                         {
                             Response.Redirect("mainpage.aspx");
                         }
                         else
                         {
                             Response.Write("<script>alert('Username or Password Wrong');</script>");
                         }
                     }
                     else
                     {
                         Response.Write("<script>alert('Username or Password Wrong');</script>");
                     }
                         break;
                     
                case "Student":
                     SqlCommand cn= new SqlCommand("Select * From users Where user_name='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", con);
                     con.Open();
                     SqlDataAdapter de;
                     DataTable dd = new DataTable();
                     de = new SqlDataAdapter(cn); 
                     de.Fill(dd);
                     con.Close();
                     if (dd.Rows.Count > 0)
                     {
                         var cv4 = dd.Rows[0]["st_id"].ToString();
                         Session.Add("ID", cv4);
                         if (cv4 != "")
                         {
                             Response.Redirect("mainpage.aspx");
                         }
                         else
                         {
                             Response.Write("<script>alert('Username or Password Wrong');</script>");
                         }
                     }
                     else
                     {
                         Response.Write("<script>alert('Username or Password Wrong');</script>");
                     }
                    break;
            }

        }




    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("selectperson.aspx");
    }
}
    
