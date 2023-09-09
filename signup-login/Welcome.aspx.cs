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
            Response.Write("Hello, Welcome: " + n1);
        }

        protected void Addbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add.aspx");
        }

        protected void Viewbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View.aspx");
        }
    }
}