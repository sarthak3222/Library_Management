using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;


public partial class User_Default : System.Web.UI.Page
{
    myclass x = new myclass ();
    DataTable dat = new DataTable();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email_id"] == null)
        {
            Response.Redirect("~/User/login.aspx");
        }
    }

    protected void btn_change_Click(object sender, EventArgs e)
    {
        x.conopen ();
        qry = "select * from student_mster where email_id='" + Session["email_id"].ToString() + "'";
        dr= x.search (qry);
        if (dr .HasRows)
        {
            dr.Read();
            if (txtcurrentpass .Text == dr[9].ToString())
            {
                if (txtnewpass .Text == txtreenter .Text)
                {
                    x.conclose();
                    x.conopen();
                    qry = "update student_mster set pass='" + txtnewpass .Text + "' where email_id='" + Session["email_id"].ToString() + "'";
                    x.iud(qry);
                    lbl_error.Text = "Password will Be changed";
                    Response.Redirect("~/User/login.aspx");
                }
                else
                {
                    lbl_error.Text = "New Password And Confirm Password Must Be Same";
                }
            }
            else
            {
                lbl_error.Text = "Current Password Wrong";
            }
        }
        else
        {
            lbl_error.Text = "No User Found";
        }
        x.conclose ();
    }
}