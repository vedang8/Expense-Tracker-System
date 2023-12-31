﻿using System;
using System.Collections;
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
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\pranjal\\OneDrive\\Desktop\\collage studies\\SEMESTER-5\\WDDN\\signup-login\\signup-login\\signup-login\\App_Data\\Database1.mdf\";Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString); 
            connection.Open();

            string uname = tbuser.Text;
            string password = tbpass.Text;

            string query1 = "SELECT COUNT(*) FROM Users WHERE Username = @Username";
            bool value = true;
            using (SqlCommand cmd = new SqlCommand(query1, connection))
            {
                cmd.Parameters.AddWithValue("@Username", uname);

                int count = (int)cmd.ExecuteScalar();
                if(count > 0)
                {
                    value = false;
                    Response.Write("You are ALREADY registered!!!");
                }

                
            }

            if (value)
            {
                string query = "INSERT INTO Users (Username, Password) VALUES (@Username, @Password)";


                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", uname);
                    command.Parameters.AddWithValue("@Password", password);

                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
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
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}