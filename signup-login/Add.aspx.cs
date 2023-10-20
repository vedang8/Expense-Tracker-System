using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace signup_login
{
    public partial class Add : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ToString();
            // InitializeComponent();
        }

        protected void Addbtn_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            DropDownList1.SelectedItem.Text = "";

            string n1 = Session["username"].ToString();
            string p1 = Session["password"].ToString();
            if(string.IsNullOrEmpty(n1) || string.IsNullOrEmpty(p1))
            {
                return;
            }
            //string ConnectionString = @"Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\VEDANGJOSHI\\source\\repos\\signup-login\\signup-login\\App_Data\\Database1.mdf;Integrated Security=True";
            
           
            string q1 = "SELECT UserID FROM Users WHERE Username=@Username AND Password=@Password";
            
            int user_id;
            using (con)
            {
                //con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\VEDANGJOSHI\\source\\repos\\signup-login\\signup-login\\App_Data\\Database1.mdf;Integrated Security=True";
                
                using(SqlCommand cmd = new SqlCommand(q1))
                {
                    cmd.Connection = con;
                    con.Open();
                    cmd.Parameters.AddWithValue("@Username", n1);
                    cmd.Parameters.AddWithValue("@Password", p1);
                    //p.Direction = System.Data.ParameterDirection.ReturnValue;
                    //cmd.ExecuteNonQuery();
                    user_id = (int)cmd.ExecuteScalar();

                    string query = "INSERT INTO Expenses (Uid, Name, Amount, Category, Date, Description) VALUES(@UId, @Name, @Amount, @Category, @Date, @Description)";

                    string nm = TextBox1.Text;
                    string samt = TextBox2.Text;
                    int amt;
                    int.TryParse(samt, out amt);
                    string cat = DropDownList1.SelectedItem.Text;
                    string date = TextBox4.Text;
                    string des = TextBox3.Text;
                    try
                    {
                        using (con)
                        {
                            //con.Open();
                            using (SqlCommand cmd1 = new SqlCommand(query))
                            {
                                cmd1.Connection = con;
                                cmd1.Parameters.AddWithValue("@UId", user_id);
                                cmd1.Parameters.AddWithValue("@Name", nm);
                                cmd1.Parameters.AddWithValue("@Amount", amt);
                                cmd1.Parameters.AddWithValue("@Category", cat);
                                cmd1.Parameters.AddWithValue("@Date", date);
                                cmd1.Parameters.AddWithValue("@Description", des);

                                cmd1.ExecuteNonQuery();
                                // con.Close();
                                TextBox5.Text = "Expense Added!!!";
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Errors: " + ex.Message);
                    }
                    con.Close();
                }
            } 
            
            
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

        protected void Reportsbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reports.aspx");
        }

    }
}