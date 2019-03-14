using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgot1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand com = con.CreateCommand();
            com.CommandText = "select * from signup where email='" + this.TextBox1.Text + "'";
            Session["sfid"] = TextBox1.Text;
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read() && this.TextBox1.Text!=null)
            {
                
                Response.Redirect("forgot2.aspx");
             }
            else
            {
     
              //  Response.Redirect("forgot1.aspx");
                Response.Write("<script>alert('invalid username and password');</script>");
             //   Response.Write("<script>alert('enter valid email address');</script>");
            }
            con.Close();
        }
        catch (Exception ee)
        {
            this.TextBox1.Text = "error" + ee.Message;
        }
     

    }
}