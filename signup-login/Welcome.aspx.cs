using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace signup_login
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string n1 = Session["username"].ToString();
            string p1 = Session["password"].ToString();
            if (n1 == null)
                Response.Write("eror");
            //Response.Write("Hello, Welcome: " + n1);
            Daylbl.Text = DateTime.Today.Day.ToString();
            Monthlbl.Text = DateTime.Today.Month.ToString();
        }

        protected void Addbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add.aspx");
        }

        protected void Viewbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View.aspx");
        }

        protected void Dailytot_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Daily_Total.aspx");
        }

        protected void Logoutbtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }
    }
}