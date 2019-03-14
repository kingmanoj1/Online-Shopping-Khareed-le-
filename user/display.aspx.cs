using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        /*string ca = Request.QueryString["p_category"].ToString();
        Label1.Text = ca;*/
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        if (Request.QueryString["p_category"].ToString() == "c")
        {
            cmd.CommandText = "select * from product where p_name='" + Request.QueryString["search"].ToString() + "'";
        }
        else if (Request.QueryString["search"].ToString() == "a")
        {
            cmd.CommandText = "select * from product where a_category='" + Request.QueryString["p_category"].ToString() + "'";

        }
        else 
        {
              Response.Redirect("front.aspx");
             // Response.Write("<script>alert('remove sucessfully..');</script>");
          }

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();

        con.Close();



        /*
                if (Request.QueryString["search"].ToString() != null)
                {
          
                    con.Open();

                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;


                    cmd.CommandText = "select * from product where p_name='" + Request.QueryString["search"].ToString() + "'";

                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    DataList1.DataSource = dt;
                    DataList1.DataBind();

                    con.Close();
                }*/
    } 

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random rn = new Random();
        int i = rn.Next(1, 5);
        //int j = rn.Next(3, 5);
        Image1.ImageUrl = "~/imag/" + i.ToString() + ".jpg";
        Image2.ImageUrl = "~/imag/" + i.ToString() + ".jpg";
        Image3.ImageUrl = "~/imag/" + i.ToString() + ".jpg";
    }
}