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
    public partial class Daily_Total : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Total.Text = "";
        }

        protected void Showdaily_Click(object sender, EventArgs e)
        {
            String date = textdt.Text;

            Total.Text = "";
            GridView1.Visible = false;
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

                    // Get the total expense
                    string q1 = "SELECT SUM(Amount) FROM Expenses WHERE UId = @UId AND Date = @Date";
                    SqlCommand cmd1 = new SqlCommand(q1, con);
                    // con.Open();
                    cmd1.Parameters.AddWithValue("@UId", id);
                    cmd1.Parameters.AddWithValue("@Date", date);
                    object result = cmd1.ExecuteScalar();
                    if (result != null && result != DBNull.Value)
                    {
                        decimal amt = Convert.ToDecimal(result);
                        if (amt != 0)
                        {
                            Total.Text = amt.ToString();
                            GridView1.Visible = true;
                            string q2 = "SELECT ExpenseID, Name, Amount, Category FROM Expenses WHERE UId = @UId AND Date = @Date";
                            SqlCommand cmd2 = new SqlCommand(q2, con);
                            // con.Open();
                            cmd2.Parameters.AddWithValue("@UId", id);
                            cmd2.Parameters.AddWithValue("@Date", date);
                            SqlDataReader rdr = cmd2.ExecuteReader();
                            GridView1.DataSource = rdr;
                            GridView1.DataBind();
                            rdr.Close();
                        }
                        else
                        {
                            // Console.WriteLine("There is no data for your category");
                            Panel2.Visible = true;
                            GridView1.Visible = false;
                            // GridView
                            return;
                        }
                    }
                    else
                    {
                        Panel2.Visible = true;
                    }
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

        protected void Reportsbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reports.aspx");
        }

        protected void Logoutbtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Welcome.aspx");
        }
    }
}