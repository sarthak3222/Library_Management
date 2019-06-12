using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Default2 : System.Web.UI.Page
{
    myclass x = new myclass();
    double addition;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        }
    }
    public void FillGrid()
    {
        x.conopen();
        //SELECT b.book_id,b.book_name,p.pub_name,b.edition,author_id,sem,subject,qty,price,(book_mster.Price*book_mster.qty) as Total1 from book_mster
        SqlCommand cmd = new SqlCommand("SELECT b.book_id, b.book_name, p.pub_name, b.edition, a.author_name, b.sem, s.sub_name, b.qty, b.price,(b.Price*b.qty) as Total1 FROM book_mster AS b INNER JOIN pub_mster AS p ON b.pub_id = p.pub_id INNER JOIN author_mster AS a ON b.author_id = a.author_id inner join subject_mster as s on b.sub_id=s.sub_id order by b.book_id", x.cn);
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        x.conclose();
        //x.conopen();
        //string s;
        //s = "select sum (qty*price) as Total from book_mster"; 
        //addition = x.totalprice(s);
        //lbltotal_amt.text = addition.ToString();
        //x.conclose();
    }
    protected void gridview_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        FillGrid();
    }

    protected void gridview_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lblbook_id = (Label)row.FindControl("lblbook_id");
        TextBox txtbname = (TextBox)row.FindControl("txtbname");
        TextBox txtpub = (TextBox)row.FindControl("txtpub");
        TextBox txtedition = (TextBox)row.FindControl("txtedition");
        TextBox txtauthor = (TextBox)row.FindControl("txtauthor");
        TextBox txtsem = (TextBox)row.FindControl("txtsem");
        TextBox txtsub = (TextBox)row.FindControl("txtsub");
        TextBox txtqty = (TextBox)row.FindControl("txtqty");
        TextBox txtprice = (TextBox)row.FindControl("txtprice");
        Label lbltotal_amt = (Label)row.FindControl("lbltotal_amt");
        GridView1.EditIndex = -1;


        x.conopen();
        int i = Convert.ToInt32(txtqty.Text);
        int j = Convert.ToInt32(txtprice.Text);
        lbltotal_amt.Text = Convert.ToString(i * j);
        string edit;
        edit = "update book_mster set book_name='"+ txtbname.Text +"'pub_name='"+txtpub.Text +"'edition='"+txtedition.Text +"'author_name='"+txtauthor.Text +"'sem='"+txtsem.Text +"'sub_name='"+txtsub.Text  +"'qty ='" + txtqty.Text + "', total_amt='" +lbltotal_amt.Text + "' where book_id='" + lblbook_id.Text + "'";
        x.AddtoCartiud(edit);
        x.conclose();
        FillGrid();
        x.conopen();
       // string edit;
        edit = "update book_mster set price ='" + txtprice .Text + "' where book_id='" + lblbook_id.Text + "'";
        x.AddtoCartiud(edit);
        x.conclose();
        FillGrid();
    }
    protected void gridview_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        FillGrid();
    }

    protected void gridview_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        x.conopen();
        Label Id = (Label)GridView1.Rows[e.RowIndex].FindControl("lblbook_id");
        string remove;
        remove = "delete from book_mster where book_id=" + Convert.ToInt32(Id.Text) + "";
        x.AddtoCartiud(remove);
               x.conclose();
        FillGrid();
    }
}