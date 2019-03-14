using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgot3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
      //  string s=Session["sfid"].ToString();
        con.Open();
        SqlCommand com = con.CreateCommand();
        com.CommandText = "select password from signup where email='" + Session["sfid"] + "'";


        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            this.Label2.Text = dr["password"].ToString();

        }
        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}