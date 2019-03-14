using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_buy : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(Request.QueryString["id"].ToString());

        Label9.Text = Convert.ToString(a);
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select * from order_detail ", con);
            SqlCommandBuilder com = new SqlCommandBuilder(ad);
            DataSet ds = new DataSet();
            ad.Fill(ds, "order_detail");
            DataRow r = ds.Tables["order_detail"].NewRow();
            r["pid"] = this.Label9.Text;
            r["name"] = this.TextBox1.Text;
            r["address"] = this.TextBox2.Text;
            r["city"] = this.TextBox3.Text;
            r["mobile"] = this.TextBox5.Text;
            r["email"] = this.TextBox6.Text;
            r["landmark"] = this.TextBox7.Text;
            r["pin"] = this.TextBox4.Text;
                                 //f1.SaveAs(Request.PhysicalApplicationPath + "./img/" + f1.FileName.ToString());
            ds.Tables["order_detail"].Rows.Add(r);
            ad.Update(ds, "order_detail");

           // Response.Redirect("../user/payment.aspx?pid=" + this.Label9.Text.ToString());

            //Response.Redirect("../user/buy.aspx?oid="+e+"" );
            con.Close();
        }
        catch (Exception ee)
        { }
}

    protected void Button1_Command(object sender, CommandEventArgs e)
    {

       
           }
    protected void Button1_Command1(object sender, CommandEventArgs e)
    {
        Response.Redirect("../user/payment.aspx?name=" + this.TextBox1.Text.ToString() + "");
    }
    protected void Unnamed1_Tick(object sender, EventArgs e)
    {
        Random rn = new Random();
        int i = rn.Next(2, 5);
       // int j = rn.Next(3, 5);
        Image1.ImageUrl = "~/imag/b" + i.ToString() + ".gif";
       // Image2.ImageUrl = "~/imag/b" + j.ToString() + ".gif";
    }
}
