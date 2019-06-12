using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default2 : System.Web.UI.Page
{
    myclass x = new myclass();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        x.conopen();
        qry = "insert into pub_mster values ('" + txtpubname.Text + "')";
        x.iud(qry);
        x.conclose();
        Label1.Text = "Publication is added.....";
        clear();
    }
    void clear()
    {
        foreach (var x in Form1.Controls)
        {
            if (x is TextBox)
            {
                ((TextBox)x).Text = "";
            }
        }
    }
}