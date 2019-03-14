using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
   // int price = Convert.ToInt32(Request.QueryString["p_price"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"].ToString());


        if (Session["usid"] == null)
        {
            
            Response.Write("<script>alert('you must Login first');</script>");
            Response.Redirect("login.aspx");
        }
        else if(id!=0){


            //int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            string name="";
            string i = "";
            string desc = "";
            string size="";
            string price = "";
            
           
            con.Open();
            SqlCommand com = con.CreateCommand();
            com.CommandText = "select * from product where id=" + id;
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                 size =dr["p_size"].ToString();
                 name = dr["p_name"].ToString();
                 price =(dr["p_price"]).ToString();
                 desc = dr["p_desc"].ToString();
                 i = dr["p_img"].ToString();
            }
                con.Close();


                con.Open();
        


                SqlDataAdapter ad = new SqlDataAdapter("select * from cart", con);
                SqlCommandBuilder comm = new SqlCommandBuilder(ad);
                DataSet ds = new DataSet();
                ad.Fill(ds, "cart");
                DataRow r = ds.Tables["cart"].NewRow();
                r["id"] = id;
                r["p_name"] = name;
                r["p_price"] = price;
                r["p_size"] = size;
                r["p_desc"] = desc;
                r["p_img"] = i;
               // r["id"] = id;
                r["sid"] = Session["usid"];
                ds.Tables["cart"].Rows.Add(r);
                ad.Update(ds, "cart");
       
            con.Close();


            con.Open();

        
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from cart where sid='" + Session["usid"] + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                DataList2.DataSource = dt;
                DataList2.DataBind();
              

                int total = Convert.ToInt32(dt.Compute("Sum(p_price)", ""));
                this.Label7.Text = Convert.ToInt32(total).ToString();

                 
            
        }
        else {


                con.Open();


                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from cart where sid='" + Session["usid"] + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                DataList2.DataSource = dt;
                DataList2.DataBind();

            
                int total = Convert.ToInt32(dt.Compute("Sum(p_price)", ""));
                this.Label7.Text = Convert.ToInt32(total).ToString();

                con.Close();
            
            }



          
    }

    protected void  Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        //Label6.Text = e.AffectedRows.ToString();
           }
    protected void LinkButton3_Command(object sender, CommandEventArgs e)
    {
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Command(object sender, CommandEventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
    }
    protected void LinkButton2_Command(object sender, CommandEventArgs e)
    {
        con.Open();          
       /* int a = Convert.ToInt32(e.CommandArgument.ToString());
        Label7.Text = Convert.ToString(a);
       */ SqlCommand cmd = new SqlCommand("delete from cart where id=" + e.CommandArgument.ToString() + "", con);
     

        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('remove sucessfully..');</script>");
        con.Close();
        
    }
    protected void Button2_Click2(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Command1(object sender, CommandEventArgs e)
    {
        //Response.Redirect("buy.aspx ? id='"+e.CommandArgument.ToString()+"'");
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {

     /*   Random rn = new Random();
        int i = rn.Next(1, 5);
        int j = rn.Next(3, 5);
        Image1.ImageUrl = "~/imag/" + i.ToString() + ".jpg";
        Image2.ImageUrl = "~/imag/" + j.ToString() + ".jpg";
        Image3.ImageUrl = "~/imag/" + i.ToString() + ".jpg";
       // Image4.ImageUrl = "~/imag/" + i.ToString() + ".jpg";
    */}
}