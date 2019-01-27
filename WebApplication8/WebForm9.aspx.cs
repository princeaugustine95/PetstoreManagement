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
    public partial class WebForm9 : System.Web.UI.Page
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
                String query = "Select * from patient where PID= @PID";
                SqlCommand command = new SqlCommand(query,myConnection);
                
                command.ExecuteNonQuery();

               
                myConnection.Close();
            }
            catch(Exception ex)
            {
                Response.Write("error connecting user "+ex.ToString());
            }

        }
    }
}