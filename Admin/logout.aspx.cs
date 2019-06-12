using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Login.aspx");
        
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        //Session.RemoveAll();
        // Session.Abandon();
        Session.Clear();
    }
}