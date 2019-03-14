using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ManojBhatt;Initial Catalog=shop;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select * from signup", con);
            SqlCommandBuilder com = new SqlCommandBuilder(ad);
            DataSet ds = new DataSet();
            ad.Fill(ds, "signup");
            DataRow r = ds.Tables["signup"].NewRow();
            r["username"] = this.TextBox1.Text;
            r["password"] = this.TextBox2.Text;
            r["email"] = this.TextBox3.Text;
            r["address"] = this.TextBox4.Text;
            r["answer"] = this.TextBox5.Text;
            r["dob"] = this.Calendar1.SelectedDate;
            r["question"] = this.DropDownList1.SelectedItem.Value;
            //f1.SaveAs(Request.PhysicalApplicationPath + "./img/" + f1.FileName.ToString());


            ds.Tables["signup"].Rows.Add(r);
            ad.Update(ds, "signup");
            con.Close();
        }
        catch (Exception ee)
        {

        }
    }
}