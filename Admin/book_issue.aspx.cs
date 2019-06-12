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
    string qry,sname;
    SqlDataReader dr;
    string j;
    int books,qty,available,rent;
    DataSet dst = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList3.Items.Insert(0, new ListItem("--Select Sem--", "0"));
            fillpublication();
            fillbook();
        }
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (txt_enroll.Text == "")
        {
            Panel1.Visible = false;
            Label2.Text = "Pls Enter Enrollment Number...!!!";
        }
        else if (DropDownList1.SelectedValue=="0" || DropDownList2.SelectedValue=="0"|| DropDownList3.SelectedValue=="0")
        {
            Label2.Text = "You Must Select Any Values In Dropdown ";
        }
        else
        {
            Panel1.Visible = true;
            x.conopen();
            qry = "select * from student_mster where enrollment_no ='" + txt_enroll.Text + "'";
            dr = x.search(qry);
            if (dr.HasRows)
            {
                dr.Read();
                // lbl_sname.Text = DropDownList2.SelectedItem.Text;
                x.conclose();
                x.conopen();
                qry = "select count(*) from issue_mster where enrollment_no='" + txt_enroll.Text +"'" ;
                dr = x.search(qry);
                dr.Read();
                books = Convert.ToInt32(dr[0]);
                lbl_books.Text = "Total Issued : " + books.ToString();
                if (books < 3)
                {
                    Label2.Text = "";
                }
                else
                {
                    // btn_issue.Visible  = false;
                    Panel1.Visible = false;
                    Label2.Text = " YOU ALREADY ISSUED 3 BOOKS....";
                }
                //Label2.Text = " Book Is Issued.....";
                x.conclose();
                x.conopen();
               //qry = "SELECT s.first_name, book_mster.qty FROM student_mster AS s CROSS JOIN book_mster where enrollment_no=" + txt_enroll.Text + " AND book_id=" + DropDownList1.SelectedValue ;
                qry="select * from book_mster where book_id=" + DropDownList1.SelectedValue ;
                dr = x.search(qry);
                dr.Read();
                //sname = Convert.ToString(dr[0]);
                //lbl_sname.Text = sname.ToString();
                qty = Convert.ToInt32(dr[7]);
                lbl_qty.Text = qty.ToString();
                x.conclose();
                x.conopen();
                qry="select * from student_mster where enrollment_no='" + txt_enroll.Text + "'";
                dr = x.search(qry);
                dr.Read();
                sname = Convert.ToString(dr[2]);
                lbl_sname.Text = sname.ToString();
                x.conclose();
                x.conopen();
                qry = "SELECT COUNT(*) AS Expr1 FROM issue_mster WHERE pub_id ='" + DropDownList2.SelectedValue + "' AND book_id =" + DropDownList1.SelectedValue;
                dr = x.search(qry);
                dr.Read();
                rent = Convert.ToInt32(dr[0]);
                lbl_rent.Text = rent.ToString();

                available = Convert.ToInt32(dr[0]);
                lbl_availabel.Text = qty.ToString();
                Int32 val1 = Convert.ToInt32(lbl_qty.Text);
                Int32 val2 = Convert.ToInt32(lbl_rent.Text);
                Int32 val3 = val1 - val2;
                lbl_availabel.Text = val3.ToString();
                if (lbl_availabel.Text == "0")
                {
                    btn_issue.Enabled = false;
                }
                else
                {
                    btn_issue.Enabled = true;
                }
                //        x.conclose();
            }
            else
            {
                Panel1.Visible = false;
                Label2.Text = " ENROLLMENT NUMBER IS NOT CORRECT.....";
            }
            x.conclose();
        }       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        x.conopen();
        qry = "select count(*) from issue_mster where enrollment_no='" + txt_enroll.Text + "'";
        dr = x.search(qry);
        dr.Read();
        books = Convert.ToInt32(dr[0]);
        lbl_books.Text = "Total Issued : " + books.ToString();
        if (books < 3)
        {
            btn_issue.Enabled = true;
        }
        else
        {
           // btn_issue.Visible  = false;
            btn_issue.Enabled  = false;
            Label1.Text = " YOU ALREADY ISSUED 3 BOOKS...."; 
        }
        x.conclose();
    }
    protected void btn_issue_Click(object sender, EventArgs e)
    {

        DateTime dt = DateTime.Today;
        DateTime dt1 = DateTime.Today.AddDays(7);
        string dt2 = Convert.ToString(dt);
        string dt3 = Convert.ToString(dt1);
        string dt4 = dt2.Substring(0,10);
        string dt5 = dt3.Substring(0,10);
        x.conopen();
        qry = "select * from issue_mster where enrollment_no ='" + txt_enroll.Text + "' and book_id = '" + DropDownList1.SelectedValue + "'";
        dr = x.search(qry);
        if (dr.HasRows)
        {
            Label1.Text = "This Book Is Alredy Issue By You...";
            clearL();
        }

        else
        {
            x.conclose();
            x.conopen();
            qry = "insert into issue_mster values ('" + txt_enroll.Text + "','" + DropDownList3.SelectedValue + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + dt4 + "','" + dt5 + "')";
            x.iud(qry);
            //Label1.Text = " Book Is Issued.....";
            Panel1.Visible = false;

        }
        x.conclose();
        // Response.Redirect("book_issue.aspx");
        Label3.Text = " Book Is Issued.....";
        clearT();
        fillpublication();
        fillbook();
        Response.AddHeader("refresh", "2;url=book_issue.aspx");
       
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
    void clearL()
    {
        foreach (var x in Form1.Controls)
        {
            if (x is Label )
            {
                ((Label )x).Text = "";
            }
        }

    }

    void fillpublication()
    {
        x.conopen();
        qry = "select * from pub_mster";
        dst = x.fills(qry);
        //DropDownList1.DataSource=dst.Tables[0];
        DropDownList2.DataTextField = "pub_name";
        DropDownList2.DataValueField = "pub_id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("--Select publication--", "0"));
        x.conclose();
    }
    void fillbook()
    {
        x.conopen();
        qry = "select * from book_mster";
        dst = x.fills(qry);
        //DropDownList1.DataSource=dst.Tables[0];
        DropDownList1.DataTextField = "book_name";
        DropDownList1.DataValueField = "book_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("--Select Book--", "0"));
        x.conclose();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillbook();
    }
}