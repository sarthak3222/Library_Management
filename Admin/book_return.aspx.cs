using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.IO;
public partial class Admin_Default2 : System.Web.UI.Page
{
    myclass x = new myclass();
    string qry,idate,rdate,sname,pbname;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet dst = new DataSet();
    SqlDataReader dr;
    DateTime dt = DateTime.Now.Date;
    TimeSpan diff;
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            if (txt_enroll.Text != "")
            {
                fillbook();
            }
            else
            {
                Panel3.Visible = false;
                Panel2.Visible = false;
            }
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        //TimeSpan diff;
        clearL();
        Panel1.Visible = true;
        Panel2.Visible = false;
            fillbook ();
        //x.conopen();
        //qry = "select a.issue_id,b.student_name,c.book_name,a.issue_date,c.book_id from issue_mster a,student_mster b,book_mster c where b.enrollment_no=a.enrollment_no and a.book_id=c.book_id and a.enrollment_no=" + txt_enroll.Text;  
        //dst = x.fills(qry);
        //    if(dst.Tables[0].Rows.Count > 0)
        //    {
        //        lbl_sname.Text = dst.Tables[0].Rows[0][1].ToString();
        //        DropDownList1.DataSource = dst.Tables[0];
        //        DropDownList1.DataTextField = "book_name";
        //        DropDownList1.DataValueField = "book_id";
        //        DropDownList1.DataBind();
        //        DropDownList1.Items.Insert(0, new ListItem("--Select Book--", "0"));
        //        //idate=dst.Tables[0].Rows[0][3].ToString();
                //diff = dt - Convert.ToDateTime(idate);
                // var days = diff.TotalDays;
                //lbl_days.Text = Convert.ToString(days);
                //lbl_issuedate.Text = idate.ToString();
                //x.conclose(); 
                //x.conopen();
                //qry = "select * from  issue_mster where enrollment_no=" + txt_enroll.Text ;
                //dr = x.search(qry);
                //dr.Read();
                //DateTime rdate = Convert.ToDateTime(dr[5].ToString());
                //TimeSpan differ = dt - rdate;
                //double day = differ.TotalDays;
                //if (day < 7)
                //{
                //    lbl_panalty.Text = "NO";
                //}
                //else
                //{
                //    lbl_panalty.Text = "YES";
                //}
                
        //    }
        //else 
        //    {
        //        Panel1.Visible = false;
        //        Label1.Text = " PLEASE ENTER VALIED ENROLLMENT NUMBER....";
        //    }
       // x.conclose();
       
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
            //idate=dst.Tables[0].Rows[0][3].ToString();
            //diff = dt - Convert.ToDateTime(idate);
            // var days = diff.TotalDays;
            //lbl_days.Text = Convert.ToString(days);
            //lbl_issuedate.Text = idate.ToString();
            //x.conclose(); 
            //x.conopen();
            //qry = "select * from  issue_mster where enrollment_no=" + txt_enroll.Text ;
            //dr = x.search(qry);
            //dr.Read();
            //DateTime rdate = Convert.ToDateTime(dr[5].ToString());
            //TimeSpan differ = dt - rdate;
            //double day = differ.TotalDays;
            //if (day < 7)
            //{
            //    lbl_panalty.Text = "NO";
            //}
            //else
            //{
            //    lbl_panalty.Text = "YES";
            //}

        }
        else
        {
            Panel1.Visible = false;
            Label1.Text = "You Don't Have Any Issued Book...";
        }
        x.conclose();
 
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        x.conopen();
        qry = "select  * from  issue_mster where enrollment_no='" + txt_enroll.Text + "'AND book_id=" + DropDownList1.SelectedItem.Value ;
        dr = x.search(qry);
        dr.Read();
        idate = Convert.ToString (dr[5]);
        diff = dt - Convert.ToDateTime(idate);
        var days = diff.TotalDays;
        lbl_days.Text = Convert.ToString(days);
        lbl_issuedate.Text = idate.ToString();
        DateTime rdate = Convert.ToDateTime(dr[5].ToString());
        TimeSpan differ = dt - rdate;
        double day = differ.TotalDays;
        if (day <= 7)
        {
            lbl_panalty.Text = "NO";
        }
        else
        {
            lbl_panalty.Text = "YES";
        }
        x.conclose();

        if (lbl_panalty.Text == "YES")
        {
            btn_return.Enabled = false;
            btn_panalty.Enabled = true;
        }
        else
        {
            btn_return.Enabled = true;
            btn_panalty.Enabled = false;
        }
        x.conopen();
        SqlCommand cmd = new SqlCommand("SELECT d.demand_id , d.enrollment_no, b.book_name,d.demand_date FROM demand_mster as d inner join book_mster as b on d.book_id=b.book_id where b.book_id= '" + DropDownList1.SelectedValue + "'", x.cn);
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        x.conclose();
        //x.conopen();
        //dst.Clear();
        //qry = "select * from demand_mster ";
        //SqlDataAdapter adp = new SqlDataAdapter(qry, x.cn);
        //adp.Fill(dst);
        //GridView1.DataSource=dst.Tables[0];
        //GridView1.DataBind();
        //x.conclose();
    }
    protected void btn_return_Click(object sender, EventArgs e)
    {
        
        x.conopen();
        qry = "insert into return_mster values('" + txt_enroll.Text + "','" + DropDownList1.SelectedValue + "','" + lbl_issuedate.Text + "','" + dt + "','" + lbl_panalty.Text + "')";
        x.iud(qry);
        //Label2.Text = " Book Is Returned successfully.....";
        x.conclose();
        x.conopen();
        qry = "delete from issue_mster where enrollment_no='" + txt_enroll.Text  + "' AND book_id=" + DropDownList1.SelectedValue;
        x.iud(qry);
        x.conclose();
        //Panel1.Visible = false;
        if(DropDownList1.SelectedValue=="0")
        {
            Label2.Text = "You must select any book...";
        }
        else
        {
            Label3.Text = "Book is returned successfully.....";
            Panel1.Visible = false;
            clearT();
            x.conopen();
                SqlDataAdapter dap= new SqlDataAdapter("select d.demand_id,d.enrollment_no,b.book_name,d.demand_date from demand_mster as d inner join book_mster as b on  d.book_id=b.book_id where d.book_id='" + DropDownList1.SelectedValue +"'",x.cn);
                dap.Fill(dst);
                if (dst.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = dst.Tables[0];
                    GridView1.DataBind();
                    Panel3.Visible = true;
                    string Password = "yash5511";
                    string Msg1 = "book_is_avalible_now";
                    string OPTINS = "SMTLIB";
                    x.conclose();
                    x.conopen();
                    qry = "SELECT  TOP (1) s.mob_no, d.enrollment_no FROM   demand_mster AS d INNER JOIN student_mster AS s ON d.enrollment_no = s.enrollment_no ORDER BY d.demand_id";
                    dr = x.search(qry);
                    if (dr.HasRows)
                    {
                        dr.Read();
                        string mobno = Convert.ToString(dr[0]);
                        x.conclose();
                        string MobileNumber = mobno;
                        string type = "3";
                        string strUrl = "http://bulksmsgateway.in/sendmessage.php?user=yashjari&password=" + Password + "&message=" + Msg1 + "&sender=" + OPTINS + "&mobile=" + MobileNumber + "&type=" + 3;
                        System.Net.WebRequest request = System.Net.WebRequest.Create(strUrl);
                        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                        Stream s = (Stream)response.GetResponseStream();
                        StreamReader readStream = new StreamReader(s);
                        string dataString = readStream.ReadToEnd();
                        response.Close();
                        s.Close();
                        readStream.Close();
                        x.conopen();
                        qry = "DELETE TOP (1) FROM demand_mster WHERE book_id='" + DropDownList1.SelectedValue + "'";
                        x.iud(qry);
                        x.conclose();
                    }
                }
        }
        Response.AddHeader("refresh", "2;url=book_return.aspx");
        }
    protected void btn_panalty_Click(object sender, EventArgs e)
    {

        Panel2.Visible = true;
        btn_pay.Visible = false;
        x.conopen();
        qry = "SELECT first_name FROM student_mster  where enrollment_no='" + txt_enroll.Text +"'";
        dr = x.search(qry);
        dr.Read();
        sname = Convert.ToString(dr[0]);
        lbl_psname.Text = sname.ToString();
        pbname = DropDownList1.SelectedItem.Text ;
        lbl_pbname.Text = pbname.ToString();
        x.conclose();  
        Int32 val1 = Convert.ToInt32(lbl_days .Text);
        int val2 = 7;
        int  val3 = val1 - val2;
        lbl_pamount .Text = "" + (val3 * 10);
        
    }
    protected void btn_pay_Click(object sender, EventArgs e)
    {
        lbl_panalty.Text = "NO";
        Panel2.Visible = false;
        x.conopen();
        qry = "update return_mster set penalty_status='No' where enrollment_no='" + txt_enroll.Text + "'";
        x.iud(qry);
        x.conclose();
        x.conopen();
        qry = "insert into penalty_mster values('" + txt_enroll.Text + "','" + DropDownList1.SelectedValue + "','" + lbl_pamount.Text + "','" + txt_pamount.Text + "')";
        x.iud(qry);
        x.conclose();
        btn_return.Enabled = true;
        //if (lbl_pamount.Text == txt_pamount.Text)
        //{
        //    btn_pay.Enabled = true;
        //    x.conopen();
        //    qry = "update return_mster set penalty_status='No' where enrollment_no='" + txt_enroll.Text + "'";
        //    x.iud(qry);
        //    x.conclose();
        //    btn_return.Enabled = true;
        //    lbl_panalty.Text = "NO";
        //    Panel2.Visible = true;
        //}
        //else
        //{
        //    Panel2.Visible = true;
        //    btn_pay.Enabled = false;
        //    btn_return.Enabled = false;

        //}
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
    protected void txt_pamount_TextChanged1(object sender, EventArgs e)
    {
        if (lbl_pamount.Text == txt_pamount.Text)
        {
           // Panel2.Visible = true;
            btn_pay.Visible = true;
           // btn_return.Enabled = true;
           // lbl_panalty.Text = "NO";
            btn_panalty.Enabled = false;

        }
        else
        {
            Panel2.Visible = true;
            btn_pay.Visible = false;
            btn_return.Enabled = false;

        }
    }
}