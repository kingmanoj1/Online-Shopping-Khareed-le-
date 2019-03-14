using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;


public partial class a_log : System.Web.UI.Page
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
            com.CommandText = "select * from login where username='" + this.TextBox1.Text + "' and password='" + this.TextBox2.Text + "'";

            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Session["suid"] = TextBox1.Text;
                Response.Redirect("a_control.aspx");
            }
            else
            {
                Response.Write("<script>alert('invalid username and password');</script>");
            }
            con.Close();
        }
        catch (Exception ee)
        {

            this.TextBox2.Text = "error" + ee.Message;
        }

    
    
    
    
    }
  
}