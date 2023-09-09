using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace signup_login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\VEDANGJOSHI\\source\\repos\\signup-login\\signup-login\\App_Data\\Database1.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            string uname = tbloginuser.Text;
            string password = tbloginpass.Text;

            string query = "SELECT Username, Password FROM Users WHERE Username = @Username";

            using(SqlCommand cmd = new SqlCommand(query, connection))
            {
                cmd.Parameters.AddWithValue("@Username", uname);

                using(SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.Read())
                    {
                        string storedpass = reader["Password"].ToString();
                        if(storedpass == password)
                        {
                            Session["username"] = uname;
                            Session["password"] = password;
                            Response.Redirect("~/Welcome.aspx");
                        }
                        else
                        {
                            Response.Write(" TRY AGAIN!!!  Your password is incorrect");
                        }
                    }
                    else
                    {
                        Response.Write("TRY AGAIN !!! Username is incorrect");
                    }
                }
            }
            connection.Close();
        }
    }
}