using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
   
    protected void Page_Load(object sender, EventArgs e)
    {

      //  DateTime date = new DateTime();
       


        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from category";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        DataList2.DataSource = dt;
        DataList2.DataBind();
        
        con.Close();





       /* Label1.Text=Convert.ToString(Session["suid"]).ToString();
        DataTable  = new DataTable();
        dt = (DataTable)Session["buyitems"];
        if (dt != null)
        {

            Label11.Text = dt.Rows.Count.ToString();
        }
        else
        {
            Label11.Text = "0";
        }

        */

       
        //this.TextBox5.Visible = false;
       

       /* for repeter
        * 
        * SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);*/

     
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
      
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {


        if (e.CommandName == "addtocart")
        {
            Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString());

        }


    }
    protected void Button3_Click1(object sender, EventArgs e)
    {

    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton5_Command(object sender, CommandEventArgs e)
    {

    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void LinkButton5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("../admin/a_log.aspx");
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
     /*   Random rn = new Random();
        int i = rn.Next(1,5);
        Image1.ImageUrl = "imag"+i.ToString()+".jpg";*/
    }
    protected void Timer1_Tick1(object sender, EventArgs e)
    {
       /* Random rn = new Random();
        int i = rn.Next(1, 5);
        //int j = rn.Next(3, 5);
        Image1.ImageUrl = "~/imag/" + i.ToString() + ".jpg";
        /* Image2.ImageUrl = "~/imag/" + i.ToString() + ".jpg";
         Image3.ImageUrl = "~/imag/" + i.ToString() + ".jpg";
         Image4.ImageUrl = "~/imag/" + i.ToString() + ".jpg";
        // this.Button3.Text = DateTime.Now.ToString("dd-MM-yyyy h:mm:ss");*/
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Timer2_Tick(object sender, EventArgs e)
    {
     //   

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
      //  Response.Redirect("search_result.aspx?p_name="+this.TextBox1.Text);
    }
    protected void Button3_Click2(object sender, EventArgs e)
    {
            
    }
 
    protected void Timer2_Tick1(object sender, EventArgs e)
    {
       // DateTime dt = new DateTime();

        //  string dt= DateTime.Now.ToString("hh:mm:ss");
       // this.Label1.Text = DateTime.Now.ToString("dd-MM-yyy hh:mm:ss");
       

    }
    protected void Timer1_Tick2(object sender, EventArgs e)
    {/*
        Random rn = new Random();
        int i = rn.Next(1, 5);
        //int j = rn.Next(3, 5);
        Image1.ImageUrl = "~/imag/" + i.ToString() + ".jpg";*/
    }
   
    protected void Timer2_Tick2(object sender, EventArgs e)
    {
    
    }
    protected void Timer3_Tick(object sender, EventArgs e)
    {
        Random rn = new Random();
        int i = rn.Next(1, 5);
        //int j = rn.Next(3, 5);
        Image5.ImageUrl = "~/imag/best.gif";
    }
    protected void Timer1_Tick3(object sender, EventArgs e)
    {
        Image5.ImageUrl = "~/imag/best.gif";

    }
}