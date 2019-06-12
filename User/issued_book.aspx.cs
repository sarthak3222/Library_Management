using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class User_Default : System.Web.UI.Page
{
    myclass x = new myclass();
    string qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        //x.conopen();
        //qry = "select * from studen_mster where email_id='" + Session["email_id"] + "'";

        //x.conclose();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        Panel1.Visible=true;
        //x.conopen();
        //qry="select * from issue_mster where enrollment_no='" + txtenroll_no.Text +"'";
        //dr=x.search(qry);
        //if(dr.HasRows)
        //{
        //    dr.Read();

        //}
        //x.conclose();
    }
    //public void fillgrid()
    //{
    //    x.conopen();
    //    SqlCommand cmd = new SqlCommand ("SELECT i.enrollment_no,i.sem,b.book_name,p.pub_name,i.issue_date,i.return_date FROM issue_mster as i inner join book_mster as b on i.book_id=b.book_id inner join pub_mster as p on i.publication_id=p.pub_id", x.cn);
    //    GridView1.DataSource = cmd.ExecuteReader();
    //    GridView1.DataBind();
    //    x.conclose();
    //}

}