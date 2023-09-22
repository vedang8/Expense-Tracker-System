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
                    decimal sum = Convert.ToDecimal(cmd1.ExecuteScalar());
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