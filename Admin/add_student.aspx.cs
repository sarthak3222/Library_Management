using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Web;
using System.Data.SqlClient;
using System.Data;
public partial class Admin_Default : System.Web.UI.Page
{
    myclass x = new myclass();
    string qry,str, fname;
    private static Random random = new Random();
    SqlDataReader dr;
    DataTable dt = new DataTable();
    //string dt1 = Convert.ToString(dt);
    //string dt2 = dt1.Substring(0, 10);
    String chk = ".jpg , .jpeg,.png";
    string pass = RandomString(8);
    private string yash5511;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Insert(0, new ListItem("--Select Sem--", "0"));
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string Gender ;
        Gender = RadioButtonList1.SelectedItem.Value ;
            x.conopen();
        qry = "select * from student_mster where email_id='" + txtemail.Text + "' or enrollment_no='"+"E" + txtenroll_no.Text +"'";
        dt = x.ser(qry);
        if (ImgSrc.HasFile)
        {
            str = System.IO.Path.GetExtension(ImgSrc.PostedFile.FileName);
            ImgSrc.PostedFile.SaveAs(Server.MapPath("~/User/images/profile/ " + txtenroll_no .Text + str));
            fname = txtenroll_no.Text + str;
        }
        if (dt.Rows.Count == 0)
        {

            x.conclose();
                //string pass = RandomString(8);
                //x.conopen();
                //qry = "insert into student_mster values ('E" + txtenrollment_no.Text + "','" + txtfname.Text + "','" + txtaddress.Text + "','" + txtmob_no.Text + "','" + txtemail.Text + "','" + Gender + "','" + txtdob.Text + "','" + DropDownList1.SelectedValue + "','" + pass.ToString() + "','" + fname + "')";
                //x.iud(qry);
                //x.conclose();
                if (ImgSrc.HasFile)
                {
                    str = System.IO.Path.GetExtension(ImgSrc.PostedFile.FileName);
                    if (chk.Contains(str))
                    {
                        try
                        {
                            string body = this.PopulateBody(txtemail.Text, txtsname.Text, System.DateTime.Now.ToString(), pass);
                            ImgSrc.PostedFile.SaveAs(Server.MapPath("~/User/images/profile/" + txtenroll_no.Text + str));
                            MailMessage Msg = new MailMessage();
                            Msg.From = new MailAddress(txtemail.Text);
                            Msg.To.Add(txtemail.Text);
                            Msg.Subject = "Please Change your Password After Login";
                            Msg.Body = body;
                            Msg.IsBodyHtml = true;
                            SmtpClient smtp = new SmtpClient();
                            smtp.Host = "smtp.gmail.com";
                            smtp.Port = 587;
                            smtp.Credentials = new System.Net.NetworkCredential("ysv.libmng@gmail.com", "admin@5511");
                            smtp.EnableSsl = true;
                            smtp.Send(Msg);
                            Msg = null;
                            string Password = "yash5511";
                            string Msg1 = "Register_Successed...";
                            string OPTINS = "SMTLIB";
                            string MobileNumber = txtmob_no.Text;
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
                            lbl_sub.Text = "Your Password Details Sent to your mail";
                            x.conopen();
                            qry = "insert into student_mster values ('E" + txtenroll_no.Text + "','" + txtsname.Text + "','" + txtaddress.Text + "','" + txtmob_no.Text + "','" + txtemail.Text + "','" + Gender + "','" + txtdob.Text + "','" + DropDownList1.SelectedValue + "','" + pass.ToString() + "','" + fname + "')";
                            x.iud(qry);
                            x.conclose();
                            clear();
                       }
                        catch (Exception ex)
                        {
                            lbl_sub.Text = "Connection Error Please Try Agian...";
                        }
                    }
                    else
                    {
                        lbl_sub .Text = "Please Select Image File Only";
                    }
                }

                else
                {
                    lbl_sub.Text = "Please Select the File";
                }
        }
        else
        {
            // x.conclose();
            lbl_sub.Text = "You Are Already Registered. Now you will be redirect to login page";
           // lbl_sub.Text = "This Enrollment Number Is Already Registered....";
            //Response.AddHeader("Refresh", "5;url=Login.aspx");
        }
        Response.AddHeader("refresh", "2;url=add_student.aspx");
    }
    public static string RandomString(int length)
    {
        const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789abcdefghijklmnopqrstuvwxyz";
        return new string(Enumerable.Repeat(chars, length).Select(s => s[random.Next(s.Length)]).ToArray());
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
    private string PopulateBody(string EmailID, string UserName, string SystemDateTime, string Code)
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/Admin/Mail.htm")))
        {
            body = reader.ReadToEnd();
        }
        body = body.Replace("{EmailID}", EmailID);
        body = body.Replace("{UserName}", UserName);
        body = body.Replace("{SystemDateTime}", SystemDateTime);
        body = body.Replace("{Code}", Code);
        return body;
    }
        //if (ImgSrc.HasFile)
        //{
        //    str = System.IO.Path.GetExtension(ImgSrc.PostedFile.FileName);
        //    ImgSrc.PostedFile.SaveAs(Server.MapPath("~/User/images/profile/ " + txtenroll_no.Text + str));
        //    fname = txtenroll_no.Text + str;
        //}
        //x.conopen();
        //qry = "insert into student_mster values ('" + txtenroll_no.Text + "','" + txtsname.Text + "','" + txtaddress.Text + "','" + txtmob_no.Text + "','" + txtemail.Text + "','" + Gender + "','" + txtdob.Text + "','" + DropDownList1.SelectedValue + "','" + txtpass.Text + "','" + txtrepass.Text + "','" + fname + "')";
        //x.iud(qry);
        //x.conclose();
    }
