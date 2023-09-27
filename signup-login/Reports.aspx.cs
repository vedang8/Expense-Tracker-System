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
    public partial class Reports : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ToString();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Welcome.aspx");
        }

        protected void Show_Click(object sender, EventArgs e)
        {
            try
            {
                using (con)
                {
                    Totaltb.Text = "";
                    Lexptb.Text = "";
                    Hexptb.Text = "";
                    Avgtb.Text = "";
                    Maxtb.Text = "";
                    Mintb.Text = "";

                    EmptyMsg.Visible = false;
                    // Getting the user id
                    string nm = Session["Username"].ToString();
                    string n1 = "SELECT UserID From Users WHERE Username = @Username";
                    SqlCommand cmd = new SqlCommand(n1, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@Username", nm);
                    int id = (int)cmd.ExecuteScalar();

                    string cat = DropDownList1.SelectedItem.Text;
                    
                    // Get the total expense
                    string q1 = "SELECT SUM(Amount) FROM Expenses WHERE UId = @UId AND Category = @Category";
                    SqlCommand cmd1 = new SqlCommand(q1, con);
                    cmd1.Parameters.AddWithValue("@UId", id);
                    cmd1.Parameters.AddWithValue("@Category", cat);
                    object result = cmd1.ExecuteScalar();
                    Console.WriteLine(result);
                    if (result != DBNull.Value && result != null) {
                        
                        decimal sum = Convert.ToDecimal(result);
                        if (sum != 0)
                        {
                            Totaltb.Text = sum.ToString();

                            // Get the avg expense
                            string q2 = "SELECT AVG(Amount) FROM Expenses WHERE UId = @UId AND Category = @Category";
                            SqlCommand cmd2 = new SqlCommand(q2, con);
                            cmd2.Parameters.AddWithValue("@UId", id);
                            cmd2.Parameters.AddWithValue("@Category", cat);
                            decimal avg = Convert.ToDecimal(cmd2.ExecuteScalar());
                            Avgtb.Text = avg.ToString();


                            // Get the min expense
                            string q3 = "SELECT MIN(Amount) FROM Expenses WHERE UId = @UId AND Category = @Category";
                            SqlCommand cmd3 = new SqlCommand(q3, con);
                            cmd3.Parameters.AddWithValue("@UId", id);
                            cmd3.Parameters.AddWithValue("@Category", cat);
                            decimal min = Convert.ToDecimal(cmd3.ExecuteScalar());
                            Mintb.Text = min.ToString();


                            // Get the max expense
                            string q4 = "SELECT MAX(Amount) FROM Expenses WHERE UId = @UId AND Category = @Category";
                            SqlCommand cmd4 = new SqlCommand(q4, con);
                            cmd4.Parameters.AddWithValue("@UId", id);
                            cmd4.Parameters.AddWithValue("@Category", cat);
                            decimal max = Convert.ToDecimal(cmd4.ExecuteScalar());
                            Maxtb.Text = max.ToString();


                            // Get the max name expense
                            string q5 = "SELECT Name FROM Expenses WHERE Amount IN (SELECT MAX(Amount) FROM Expenses WHERE UId = @UId AND Category = @Category)";
                            SqlCommand cmd5 = new SqlCommand(q5, con);
                            cmd5.Parameters.AddWithValue("@UId", id);
                            cmd5.Parameters.AddWithValue("@Category", cat);
                            SqlDataReader read1 = cmd5.ExecuteReader();

                            while (read1.Read())
                            {
                                string max_name = read1["Name"].ToString();
                                Hexptb.Text = max_name;
                            }
                            

                            // Get the min name expense
                            string q6 = "SELECT Name FROM Expenses WHERE Amount IN (SELECT MIN(Amount) FROM Expenses WHERE UId = @UId AND Category = @Category)";
                            SqlCommand cmd6 = new SqlCommand(q6, con);
                            cmd6.Parameters.AddWithValue("@UId", id);
                            cmd6.Parameters.AddWithValue("@Category", cat);
                            read1 = cmd6.ExecuteReader();
                            while (read1.Read())
                            {
                                string min_name = read1["Name"].ToString();
                                Hexptb.Text = min_name;
                            }
                            read1.Close();
                            
                        }
                        else
                        {
                            Console.WriteLine("There is no data for your category");
                            EmptyMsg.Visible = true;
                            return;
                        }
                    }
                    else
                    {
                        EmptyMsg.Visible = true;
                    }
                    //decimal sum = Convert.ToDecimal(cmd1.ExecuteScalar());
                    
                    

                   
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