using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace signup_login
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\VEDANGJOSHI\\source\\repos\\signup-login\\signup-login\\App_Data\\Database1.mdf;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString); 
            connection.Open();

            string uname = tbuser.Text;
            string password = tbpass.Text;

            string query = "INSERT INTO Users (Username, Password) VALUES (@Username, @Password)";

            using(SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Username", uname);
                command.Parameters.AddWithValue("@Password", password);
            
                int rowsAffected = command.ExecuteNonQuery();
                if(rowsAffected > 0)
                {
                    Response.Write("Congratulations!!! you are registered");
                    //Response.Redirect("~/Login.apsx");
                }
                else
                {
                    Response.Write("Try again to register");
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}