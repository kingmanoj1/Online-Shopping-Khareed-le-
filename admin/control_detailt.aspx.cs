using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class control_detailt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string f="order";
        string c = "payment";
        string a = Request.QueryString["id"].ToString();
        if (a == f)
        {
            this.GridView4.Visible = true;
            this.GridView3.Visible = false;
        }
      if(a==c)
        {

            this.GridView4.Visible = false;
            this.GridView3.Visible = true;
        }
    }
}