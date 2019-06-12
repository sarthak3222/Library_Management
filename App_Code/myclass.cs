using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for myclass
/// </summary>
/// 

public class myclass
{
   public  SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    //   String qry;
    // int eno;
   public  SqlDataReader dr;
    DataSet ds = new DataSet();
    DataTable dt= new DataTable();
    public myclass()
    {
        cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\library management\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
    }
    public void iud(string qry)
    {
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
    }
    public void conopen()
    {
        cn.Open();
    }
    public void conclose()
    {
        cn.Close();
    }
    public SqlDataReader search(string qry)
    {
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        return dr;
    }
    public DataSet fills( string qry) 
    {

        ds.Clear();
        SqlDataAdapter adp = new SqlDataAdapter(qry,cn);
        adp.Fill(ds);
        return ds;
 
    }
    public double totalprice(string amount)
    {
        cmd.CommandText = amount;
        cmd.Connection = cn;
        double price = (double)cmd.ExecuteScalar();
        return price;
    }
    public void AddtoCartiud(string qry)
    {
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
    }
    public DataTable ser(string qry)
    {
        dt.Clear();
        SqlDataAdapter da = new SqlDataAdapter(qry, cn);
        da.Fill(dt);
        return dt;
    }
    public string sca(string qry)
    {
        SqlCommand cmd = new SqlCommand(qry,cn);
        string  c = cmd.ExecuteScalar().ToString();
        return c;
    }
}