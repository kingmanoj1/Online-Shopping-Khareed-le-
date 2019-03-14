using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class admin_a_control : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.TextBox1.Visible = false;
        this.Button7.Visible = false;
        this.Label2.Visible = false;
        this.Label3.Visible = false;
      

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("control_detailt.aspx?id=order");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("control_detailt.aspx?id=payment");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("insert into category",con);
        SqlCommandBuilder cmd = new SqlCommandBuilder(ad);
        DataSet ds = new DataSet();
        ad.Fill(ds,"category");
        DataRow r = ds.Tables["category"].NewRow();
        r["p_category"] = this.TextBox1.Text;
        ds.Tables["category"].Rows.Add(r);
        ad.Update(ds,"category");
        Response.Write("<script>alert('category added');</script>");
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        this.TextBox1.Visible = true;
        this.Button7.Visible = true;
        this.Label2.Visible = true;
        this.Label3.Visible = true;
      

    }
}