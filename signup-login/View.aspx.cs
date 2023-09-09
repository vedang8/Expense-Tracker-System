using System;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;


namespace signup_login
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Showbtn_Click(object sender, EventArgs e)
        {
            
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
                    
                    // 
                    string q1 = "SELECT ExpenseID, Name, Amount, Category, Date FROM Expenses WHERE UId = @UId";
                    SqlCommand cmd1 = new SqlCommand(q1, con);
                   // con.Open();
                    cmd1.Parameters.AddWithValue("@UId", id);
                    SqlDataReader rdr = cmd1.ExecuteReader();
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

        protected void Totalbtn_Click(object sender, EventArgs e)
        {
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
                    string q1 = "SELECT SUM(Amount) FROM Expenses WHERE UId = @UId";
                    SqlCommand cmd1 = new SqlCommand(q1, con);
                    // con.Open();
                    cmd1.Parameters.AddWithValue("@UId", id);

                    decimal amt = Convert.ToDecimal(cmd1.ExecuteScalar());
                    Total.Text = amt.ToString();
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