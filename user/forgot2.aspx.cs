using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgot2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {

        string s = Session["sfid"].ToString();
        try
        {
            //SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=test;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand com = con.CreateCommand();
            com.CommandText = "select question from signup where email='"+s+ "'";


            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                this.Label3.Text = dr["question"].ToString();
           
            }
            con.Close();

        }
        catch (Exception ee)
        {
            this.Label3.Text = "error" + ee.Message;
        }

      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            //SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=test;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand com = con.CreateCommand();
            com.CommandText = "select * from signup where answer='" + this.TextBox1.Text + "'";


            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("forgot3.aspx");

            }
            con.Close();

        }
        catch (Exception ee)
        {
            this.Label3.Text = "error" + ee.Message;
            //Response.Redirect("forgot2.aspx");
        }
    }
}