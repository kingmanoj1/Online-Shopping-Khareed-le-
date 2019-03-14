using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_search_result : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product where p_name='" +Request.QueryString["p_name"].ToString() +"'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        ad.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();

        con.Close();






        /*SqlDataAdapter ad = new SqlDataAdapter();
        SqlCommandBuilder cmd = new SqlCommandBuilder(ad);
        //SqlCommand cmd = new SqlCommand();*/

    }
}