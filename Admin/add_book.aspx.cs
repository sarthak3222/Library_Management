using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_Default2 : System.Web.UI.Page
{
    myclass x = new myclass();
    string qry;
    DataSet dst = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           fillpublication();
            fillauthor();
           DropDownList3.Items.Insert(0, new ListItem("--Select Sem--", "0"));
            fillsubject();
           
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "--Select Publication--" || DropDownList2.SelectedItem.Text == "--Select Author--" || DropDownList3.SelectedItem.Text == "--Select Sem--" || ddlsub.SelectedItem.Text == "--Select Subject--")
        {
            Label2.Text = "DropDown Must Be Select...!!!";
        }
        else
        {
            x.conopen();
            qry = "insert into book_mster values ('" + txtbookname.Text + "','" + DropDownList1.SelectedValue + "','" + txtedition.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + ddlsub.SelectedValue + "','" + txtqty.Text + "','" + txtprice.Text + "','" + Label1.Text + "')";
            x.iud(qry);
            x.conclose();
            Label2.Text = "Book is added.....";
            clear();
            Label1.Text = "";
            //Response.Redirect("add_book.aspx");
        }
    }
    protected void txtprice_TextChanged(object sender, EventArgs e)
    {
         Int32 val1 = Convert.ToInt32(txtqty.Text);
         Int32 val2 = Convert.ToInt32(txtprice.Text);
        Int32 val3 = val1 * val2;
        Label1.Text = val3.ToString();
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
    void fillpublication()
    {
        x.conopen();
        qry = "select * from pub_mster";
        dst=x.fills(qry);
        //DropDownList1.DataSource=dst.Tables[0];
        DropDownList1.DataTextField = "pub_name";
        DropDownList1.DataValueField = "pub_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("--Select publication--", "0"));
        x.conclose();
    }
    void fillauthor()
    {
        x.conopen();
        qry = "select * from author_mster";
        dst=x.fills(qry);
       // DropDownList2.DataSource=dst.Tables[0];
        DropDownList2.DataTextField = "author_name";
        DropDownList2.DataValueField = "author_id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("--Select Author--", "0"));
        x.conclose();
    }
    void fillsubject()
    {
        x.conopen();
        qry = "select * from subject_mster";
        dst=x.fills(qry);
       // ddlsub.DataSource=dst.Tables[0];
        ddlsub.DataTextField = "sub_name";
        ddlsub.DataValueField = "sub_id";
        ddlsub.DataBind();
        ddlsub.Items.Insert(0, new ListItem("--Select Subject--", "0"));
        x.conclose();
    }

}