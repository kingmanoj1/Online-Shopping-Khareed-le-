using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_detail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
   int id;
   // string na;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        //string na = Request.QueryString["p_name"].ToString();
       //this.TextBox2.Text = Convert.ToString(na);
      //this.TextBox1.Text=Convert.ToString(id);


       try
       {
           //SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=test;Integrated Security=True;Pooling=False");
           con.Open();
           SqlCommand com = con.CreateCommand();
           com.CommandText = "select * from product where id='" +id + "'";


           SqlDataReader dr = com.ExecuteReader();
           if (dr.Read())
           {
               this.Label6.Text = Convert.ToString(id);
               this.Label1.Text = dr["p_name"].ToString();
               this.Label2.Text = dr["p_price"].ToString();
             //  this.Label3.Text = dr["p_qty"].ToString();
               this.Label4.Text = dr["p_size"].ToString();
               this.Label5.Text = dr["p_desc"].ToString();
               this.Image1.ImageUrl = "../admin/img/" + dr["p_img"].ToString();
           }
           con.Close();

       }
       catch (Exception ee)
       {
           this.Label6.Text = "error" + ee.Message;
       }

        
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../user/buy.aspx?id="+this.Label6.Text.ToString());
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../user/buy.aspx?id=" + this.Label6.Text.ToString());
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random rn = new Random();
        int i = rn.Next(1, 8);
        Image3.ImageUrl = "~/imag/m" + i.ToString() + ".jpg";
        Random r = new Random();
        int j = r.Next(2, 8);
        Image2.ImageUrl = "~/imag/m" + j.ToString() + ".jpg";
        
    }
}