using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.QueryString["name"].ToString();
        Label7.Text = Convert.ToString(a);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select * from payment ", con);
            SqlCommandBuilder com = new SqlCommandBuilder(ad);
            DataSet ds = new DataSet();
            ad.Fill(ds, "payment");
            DataRow r = ds.Tables["payment"].NewRow();
            r["bank"] = this.DropDownList1.SelectedItem.Value;
            r["username"] = this.Label7.Text;
            r["card_no"] = this.TextBox2.Text;
            r["cvv"] = this.TextBox3.Text;
            r["y_exp"] = this.TextBox5.Text;
            r["m_exp"] = this.TextBox4.Text;
            //f1.SaveAs(Request.PhysicalApplicationPath + "./img/" + f1.FileName.ToString());
            ds.Tables["payment"].Rows.Add(r);
            ad.Update(ds, "payment");
            this.TextBox2.Text = "";
            Response.Redirect("front.aspx");


            this.TextBox3.Text = "";
            this.TextBox2.Text = "";
            this.TextBox4.Text = "";
            this.TextBox5.Text = "";

            con.Close();
        }
        catch (Exception ee)
        {
            TextBox2.Text=(ee.ToString());
        }
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}