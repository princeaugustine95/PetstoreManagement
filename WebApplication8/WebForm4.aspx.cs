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
    public partial class WebForm4 : System.Web.UI.Page
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
                String query = "Insert into doctor(physc_id,D_name,speciality)values(@physc_id,@D_name,@speciality)";
                SqlCommand command = new SqlCommand(query,myConnection);
                command.Parameters.AddWithValue("@physc_id",TextBox1.Text);
                command.Parameters.AddWithValue("@D_name", TextBox2.Text);
                command.Parameters.AddWithValue("@speciality", TextBox3.Text);
                command.ExecuteNonQuery();
                Response.Redirect("WebForm1.aspx");



                myConnection.Close();

            }
            catch(Exception ex)
            {
                Response.Write("error ocuured craeting new user"+ex.ToString());
            }

        }
    }
}