using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_Default : System.Web.UI.Page
{
    myclass x = new myclass();
    string qry;
    SqlDataReader dr;
    string j;
    DataSet dst = new DataSet();
    SqlCommand cmd = new SqlCommand();
    int i;
    DateTime dt = DateTime.Now.Date;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            fillpublication();
            fillbook();
        }
    }
    void fillpublication()
    {
        x.conopen();
        qry = "select * from pub_mster";
        dst = x.fills(qry);
        //DropDownList1.DataSource=dst.Tables[0];
        DropDownList1.DataTextField = "pub_name";
        DropDownList1.DataValueField = "pub_id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("--Select publication--", "0"));
        x.conclose();
    }
    void fillbook()
    {
        x.conopen();
        qry = "select * from book_mster";
        dst = x.fills(qry);
        //DropDownList1.DataSource=dst.Tables[0];
        DropDownList2.DataTextField = "book_name";
        DropDownList2.DataValueField = "book_id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("--Select Book--", "0"));
        x.conclose();
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "0" || DropDownList2.SelectedValue == "0")
        {
            Label3.Text = "You Must Select Any Values IN Dropdown...";
        }
        else
        {
            x.conopen();
            qry = "select qty from book_mster where book_id='" + DropDownList2.SelectedValue + "'";
            dr = x.search(qry);
            if (dr.HasRows)
            {
                dr.Read();
                i = Convert.ToInt32(dr[0].ToString());
            }
            x.conclose();
            x.conopen();
            qry = "select count(*) from issue_mster where book_id='" + DropDownList2.SelectedValue + "'";
            string q = x.sca(qry);
            //Label2.Text = q;
            int k = i - Convert.ToInt32(q);
            Label3.Text = " Available Book : " + k.ToString();
            if (k.ToString() == "0")
            {
                btn_demand.Visible = true;
            }
            x.conclose();
        }
    }
    protected void btn_demand_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        x.conopen();
        qry = "insert into demand_mster values('" + Session["enrollment_no"] + "','" + DropDownList2.SelectedValue + "','" + dt + "')";
        x.iud(qry);
        x.conclose();
        Label1.Text = " Your Demand Request Successfully Send To The Librarian";
    }
}