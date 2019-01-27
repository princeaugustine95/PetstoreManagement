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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["pharmacy_store1ConnectionString"].ConnectionString);
                myConnection.Open();
                String query = "Insert into prescription(Quantity,date1,PID,physc_id,drug_name,phar_id,drugm_id)values(@Quantity,@date1,@PID,@physc_id,@drug_name,@phar_id,@drugm_id)";
                SqlCommand command = new SqlCommand(query,myConnection);
                command.Parameters.AddWithValue("@Quantity", TextBox7.Text);
                command.Parameters.AddWithValue("@date1", TextBox8.Text);
                command.Parameters.AddWithValue("@PID", TextBox2.Text);
                command.Parameters.AddWithValue("@physc_id", TextBox3.Text);
                command.Parameters.AddWithValue("@drug_name", TextBox4.Text);
                command.Parameters.AddWithValue("@phar_id", TextBox5.Text);
                command.Parameters.AddWithValue("@drugm_id", TextBox6.Text);
                command.ExecuteNonQuery();
                Response.Redirect("WebForm7.aspx");

         
                myConnection.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error connecting to user "+ex.ToString());
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible )
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;

            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox8.Text = Calendar1.SelectedDate.ToString("d");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth||e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;

            }
        }
    }
}