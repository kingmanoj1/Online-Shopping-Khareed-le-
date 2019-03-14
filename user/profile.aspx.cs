using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {



        this.Label14.Visible = false;
        this.TextBox2.Visible = false;
        this.TextBox3.Visible = false;
        this.TextBox6.Visible = false;
        this.Calendar1.Visible = false;
        this.DropDownList1.Visible = false;



        this.Label8.Visible = true;
        this.Label10.Visible = true;
        this.Label11.Visible = true;
        this.Label12.Visible = true;
        this.Label9.Visible = true;
        this.Label13.Visible = true;

        if (Session["usid"] != null)
        {
            try
            {
                // SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
                con.Open();

                SqlCommand com = con.CreateCommand();
                com.CommandText = "select * from signup where username='" + Session["usid"] + "'";
                SqlDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    this.Label8.Text = dr["username"].ToString();
                    this.Label9.Text = dr["email"].ToString();
                    this.Label10.Text = dr["address"].ToString();
                    this.Label12.Text = dr["question"].ToString();
                    this.Label13.Text = dr["answer"].ToString();
                    this.Label11.Text = dr["dob"].ToString();
                    //this.level1.text = dr["sname"].ToString();*/
                    //this.Image1.ImageUrl = "~/uploads/" + dr["photo"].ToString();

                }
                con.Close();

            }
            catch (Exception ee)
            {
                this.Label5.Text = "error" + ee.Message;
            }

        }
        else
        {
            Response.Redirect("login.aspx");
        }
    
}
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Button1.Visible = false;
        this.Label8.Visible = true;
        this.TextBox2.Visible = true;
        this.TextBox3.Visible = true;
        this.TextBox6.Visible = true;
        this.Calendar1.Visible = true;
        this.DropDownList1.Visible = true;

        this.Label8.Visible = true;
        this.Label10.Visible = false;
        this.Label11.Visible = false;
        this.Label12.Visible = false;
        this.Label9.Visible = false;
        this.Label13.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();

            SqlCommand com = con.CreateCommand();
            com.CommandText = ("update signup set email='" + this.TextBox2.Text + "',address='" + this.TextBox3.Text + "',question='" + this.DropDownList1.SelectedItem.Value + "',answer='" + this.TextBox6.Text + "',dob='" + this.Calendar1.SelectedDate + "'where username='" + this.Label8.Text + "'");
            //SqlCommand com = new SqlCommand(sql, con);
            int r = com.ExecuteNonQuery();
            if (r > 0)
            {
                Response.Redirect("profile.aspx");
                //this.Label9.Text = "sucess";
                Response.Write("<script>alert('profile updated');</script>");
            }
            con.Close();

        }
        catch (Exception ee)
        {
            this.Label5.Text = "error" + ee.Message;
        }

    }
}