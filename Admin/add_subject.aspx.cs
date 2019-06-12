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
        if(!IsPostBack )
        {
             DropDownList1.Items.Insert(0, new ListItem("--Select Sem--", "0"));        
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if(DropDownList1 . SelectedItem.Text=="--Select Sem--")
        {
            Label1.Text="Sem Must Be Selected...!!!";
        }
        else
        {
            x.conopen();
            qry = "insert into subject_mster values ('" + DropDownList1.SelectedValue + "','" + txtsubname.Text + "')";
            x.iud(qry);
            x.conclose();
            Label1.Text = "Subject is added.....";
            clear();
        }
        
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