using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication8
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["pharmacy_store1ConnectionString"].ConnectionString);
                myConnection.Open();
                String query = "Insert into drug_manufacturer(drugm_id,drugm_name,address,phar_id)values(@drugm_id,@drugm_name,@address,@phar_id)";
                SqlCommand command = new SqlCommand(query, myConnection);
                command.Parameters.AddWithValue("@drugm_id", TextBox1.Text);
                command.Parameters.AddWithValue("@drugm_name", TextBox2.Text);
                command.Parameters.AddWithValue("@address", TextBox3.Text);
                command.Parameters.AddWithValue("@phar_id", TextBox4.Text);


                command.ExecuteNonQuery();
                Response.Redirect("WebForm11.aspx");


                myConnection.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error connecting to user " + ex.ToString());
            }
        }
    }
}