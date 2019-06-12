using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.IO;
public partial class Admin_login : System.Web.UI.Page
{
    myclass x = new myclass();
    string qry;
    SqlDataReader dr;
    TimeSpan diff;
    DateTime dt = DateTime.Now.Date;
    protected void Page_Load(object sender, EventArgs e)
    {
        x.conopen();
        qry = "select * from sms_mster where date='" + DateTime.Today + "'";
        dr = x.search(qry);
        if (dr.HasRows)
        {
            dr.Read();
        }
            
        else
        {
            x.conclose();
            x.conopen();
            qry = "insert into sms_mster values('1','" + DateTime.Today + "')";
            x.iud(qry);
            x.conclose();
            x.conopen();
            qry = "select s.mob_no,i.issue_date from issue_mster as i inner join student_mster as s on i.enrollment_no=s.enrollment_no";
            dr = x.search(qry);
            while (dr.Read())
            {
                string idate = Convert.ToString(dr[1]);
                diff = Convert.ToDateTime(dt) - Convert.ToDateTime(idate);
                // double days = diff.TotalDays;
                if (diff.TotalDays == 6)
                {
                    string Password = "yash5511";
                    string Msg1 = "Tomorrow_is_last_day-for-issued-book";
                    string OPTINS = "SMTLIB";
                    string mobno = Convert.ToString(dr[0]);
                    // x.conclose();
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
                }
            }
            x.conclose();
        }
        x.conclose();

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        x.conopen();
        qry = "select * from admin_mster where email_id='" + txtuname.Text + "'and password=" + txtpass.Text;
        dr = x.search(qry);
        if (dr.HasRows)
        {
            dr.Read();
            Session["name"] = dr[1].ToString();
            Response.Redirect("ahome.aspx");

        }
        else
        {
            Label1.Text = "User not found...";
        }
        x.conclose();
    }
}
