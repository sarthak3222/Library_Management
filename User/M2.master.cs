using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_M2 : System.Web.UI.MasterPage
{
    myclass x = new myclass();
    string profile;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Image1.Visible = true;
            x.conopen();
            string qry = "select * from student_mster where email_id='" + Session["email_id"] + "'";
            x.dr = x.search(qry);
            if (x.dr.HasRows)
            {
                x.dr.Read();
                profile = x.dr["image"].ToString();
                Image1.ImageUrl = "images/profile/" + profile;
            }
            else
            {
                Image1.Visible = false;
                Image1.ImageUrl = "";
            }
            x.conclose();
        }
        catch (Exception Ex)
        {
            Image1.Visible = false;
            Image1.ImageUrl = "";
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session["email_id"] == null)
        {
            Response.Redirect("~/User/login.aspx");
        }
        else
        {
            Label1.Text = Session["email_id"].ToString();
        }
    }
}
