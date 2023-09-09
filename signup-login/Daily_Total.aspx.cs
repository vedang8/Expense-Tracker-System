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

        }

        protected void Showdaily_Click(object sender, EventArgs e)
        {
            String date = textdt.Text;

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
                    decimal amt = Convert.ToDecimal(cmd1.ExecuteScalar());
                    Total.Text = amt.ToString();

                    // 
                    string q2 = "SELECT ExpenseID, Name, Amount, Category FROM Expenses WHERE UId = @UId AND Date = @Date";
                    SqlCommand cmd2 = new SqlCommand(q2, con);
                    // con.Open();
                    cmd2.Parameters.AddWithValue("@UId", id);
                    cmd2.Parameters.AddWithValue("@Date", date);
                    SqlDataReader rdr = cmd2.ExecuteReader();
                    GridView1.DataSource = rdr;
                    GridView1.DataBind();
                    rdr.Close();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }
        }
    }
}