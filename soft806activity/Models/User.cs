using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace soft806activity.Models
{
    public class User
    {
        private string ConnesctionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        private SqlConnection Connection;

        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }

        public User(string email)
        {
            Email = email;
        }

        public int Authenticate(string password)
        {
            Connection = new SqlConnection(ConnesctionString);

            using (SqlCommand cmd = new SqlCommand("isValidUser"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@email", Email);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Connection = Connection;
                Connection.Open();
                Id = Convert.ToInt32(cmd.ExecuteScalar());
                Connection.Close();
            }
            return Id;
        }
    }
}