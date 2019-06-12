using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_login : System.Web.UI.Page
{
    myclass x = new myclass();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if (txtemail.Text != null)
        {
            x.conopen();
            qry = "select * from student_mster where email_id='" + txtemail.Text + "'and pass='" + txtpass.Text + "'";
            dr = x.search(qry);
            if (dr.HasRows)
            {
                dr.Read();
                Session["email_id"] = txtemail.Text;
                Session["enrollment_no"] = dr[1].ToString();
                Response.Redirect("uhome.aspx");

            }
            else
            {
                //Response.Write("<script>alert('Innvalid Username & Password')</script>");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "$.notify(\"Please Enter the Valid Details.\", \"error\");", true);
                //Label1.Text = "User not found...";
            }
            x.conclose();
        }
    }
}