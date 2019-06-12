using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Admin_Default2 : System.Web.UI.Page
{
    myclass x = new myclass();
    string qry;
    SqlDataReader dr;
    DataSet dst = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Panel1.Visible=false;
        if (!IsPostBack)
        {
            if (txt_enroll.Text != "")
            {
                fillbook();
            }
        }
    }
    void fillbook()
    {
        x.conopen();
        qry = "select distinct a.issue_id,b.first_name,c.book_name,a.issue_date,c.book_id from issue_mster a,student_mster b,book_mster c where b.enrollment_no=a.enrollment_no and a.book_id=c.book_id and a.enrollment_no='" + txt_enroll.Text + "'";
        dst = x.fills(qry);
        if (dst.Tables[0].Rows.Count > 0)
        {
            lbl_sname.Text = dst.Tables[0].Rows[0][1].ToString();
            DropDownList1.DataSource = dst.Tables[0];
            DropDownList1.DataTextField = "book_name";
            DropDownList1.DataValueField = "book_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select Book--", "0"));
        }
        else
        {
            Panel1.Visible = false;
            Label1.Text = " You Don't Have Any Issued Book...";
        }
        x.conclose();
        //x.conopen();
        //qry = "select * from book_mster";
        //dst = x.fills(qry);
        ////DropDownList1.DataSource=dst.Tables[0];
        //DropDownList1.DataTextField = "book_name";
        //DropDownList1.DataValueField = "book_id";
        //DropDownList1.DataBind();
        //DropDownList1.Items.Insert(0, new ListItem("--Select Book--", "0"));
        //x.conclose();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // lblbamount.Text = DropDownList1.SelectedValue.ToString();
        x.conopen();
        qry = "select price from book_mster where book_id='" + DropDownList1.SelectedValue + "'";
        dr = x.search(qry);
        if (dr.HasRows)
        {
            dr.Read();
            lblbamount.Text = dr["price"].ToString();
        }
        x.conclose();
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        clearL();
        Panel1.Visible = true;
        fillbook();
    }
    protected void btn_submit1_Click(object sender, EventArgs e)
    {
        x.conopen();
        qry = "insert into book_lost  values('" + txt_enroll.Text + "','" + DropDownList1.SelectedValue + "','" + lblbamount.Text + "')";
        x.iud(qry);
        x.conclose();
        if (DropDownList1.SelectedValue == "0")
        {
            Label2.Text = "You Must Select Book..";
        }
        else
        {
            Label3.Text = "Lost Book Amount Payed";
            // fillbook();
            Panel1.Visible = false;
        }
        x.conopen();
        qry = "UPDATE  book_mster SET qty = qty - 1 WHERE book_id ='" + DropDownList1.SelectedValue + "'";
        x.iud(qry);
        x.conclose();
        x.conopen();
        qry = "delete  from issue_mster where enrollment_no ='" + txt_enroll.Text + "' and book_id='" + DropDownList1.SelectedValue + "'";
        x.iud(qry);
        x.conclose();
        Response.AddHeader("refresh", "2;url=book_lost.aspx");
        //x.conopen();
        //qry="update book_mster set qty=' 
        //x.conclose();
    }
    void clearL()
    {
        foreach (var x in Form1.Controls)
        {
            if (x is Label)
            {
                ((Label)x).Text = "";
            }
        }
    }
    void clearT()
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

