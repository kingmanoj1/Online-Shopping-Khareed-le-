using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_p_add : System.Web.UI.Page
{
     static string photo;
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
         this.Image1.Visible = true;
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Image1.Visible = true;
        photo = this.f1.FileName;
        if (f1.HasFile)
        {
            f1.SaveAs(Server.MapPath("img/" + f1.FileName));
            this.Image1.ImageUrl = "./img/" + photo;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
    try{
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter("select * from product",con);
        SqlCommandBuilder com = new SqlCommandBuilder(ad);
        DataSet ds = new DataSet();
        ad.Fill(ds, "product");
        DataRow r = ds.Tables["product"].NewRow();
        r["p_name"] = this.TextBox1.Text;
        r["p_desc"] = this.TextBox5.Text;
        r["p_size"] = this.TextBox2.Text;
        r["p_price"] = this.TextBox3.Text;
        r["p_company"] = this.TextBox6.Text;
        r["p_qty"] = this.TextBox4.Text;
        r["p_img"] = photo;
        r["a_category"] = this.DropDownList1.SelectedItem.Value;
        //f1.SaveAs(Request.PhysicalApplicationPath + "./img/" + f1.FileName.ToString());
        this.TextBox1.Text="";
        this.TextBox2.Text = "";
        this.TextBox3.Text = "";
        this.TextBox4.Text = "";
        this.TextBox5.Text = "";
        Image1.Visible = false;


        ds.Tables["product"].Rows.Add(r);
        ad.Update(ds, "product");
        con.Close();
    }
    catch (Exception ee)
    {

        this.TextBox3.Text = "error" + ee.Message;
    }

    
    
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("front.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

        try
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select * from saletbl", con);
            SqlCommandBuilder com = new SqlCommandBuilder(ad);
            DataSet ds = new DataSet();
            ad.Fill(ds, "saletbl");
            DataRow r = ds.Tables["saletbl"].NewRow();
            r["p_name"] = this.TextBox1.Text;
            r["p_desc"] = this.TextBox5.Text;
            r["p_size"] = this.TextBox2.Text;
            r["p_price"] = this.TextBox3.Text;
            r["p_company"] = this.TextBox6.Text;
            r["p_qty"] = this.TextBox4.Text;
            r["p_img"] = photo;
            r["a_category"] = this.DropDownList1.SelectedItem.Value;
            //f1.SaveAs(Request.PhysicalApplicationPath + "./img/" + f1.FileName.ToString());
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
            this.TextBox4.Text = "";
            this.TextBox5.Text = "";
            Image1.Visible = false;


            ds.Tables["saletbl"].Rows.Add(r);
            ad.Update(ds, "saletbl");
            con.Close();
        }
        catch (Exception ee)
        {

            this.TextBox3.Text = "error" + ee.Message;
        }

    


    }
}