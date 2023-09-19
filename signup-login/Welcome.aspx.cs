using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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
            string nam1 = Session["username"].ToString();
            string p1 = Session["password"].ToString();
            if (nam1 == null)
                Response.Write("eror");
            //Response.Write("Hello, Welcome: " + n1);
            Daylbl.Text = DateTime.Today.Day.ToString();
            Monthlbl.Text = DateTime.Today.Month.ToString();

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            try
            {
                using (con)
                {
                    // Getting the user id
                    string nm = Session["Username"].ToString();
                    string n1 = "SELECT UserID From Users WHERE Username = @Username";
                    SqlCommand cmd = new SqlCommand(n1, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@Username", nm);
                    int id = (int)cmd.ExecuteScalar();

                    DateTime currentDate = DateTime.Now;
                    int targetMonth = currentDate.Month;
                    // Get the total expense
                    string q1 = "SELECT SUM(Amount) FROM Expenses WHERE UId = @UId";
                    SqlCommand cmd1 = new SqlCommand(q1, con);
                    // con.Open();
                    cmd1.Parameters.AddWithValue("@UId", id);

                    decimal amt = Convert.ToDecimal(cmd1.ExecuteScalar());
                    TextBox1.Text = amt.ToString();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }
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