using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
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
            com.CommandText = "select * from signup where username='" + this.TextBox3.Text + "' and password='" + this.TextBox4.Text + "'";

            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Session["usid"] = TextBox3.Text;
                Response.Redirect("front.aspx");
            }
            else
            {
                Response.Write("<script>alert('invalid username and password');</script>");
            }
            con.Close();
        }
        catch (Exception ee)
        {

            this.TextBox3.Text = "error" + ee.Message;
        }
   
 }
}