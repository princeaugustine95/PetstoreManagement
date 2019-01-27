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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            char sex;
            if(Male.Checked)
            {
                sex = 'M';
            }
            else 
            {
                sex ='F' ;
            }
       
            try
            {
                SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["pharmacy_store1ConnectionString"].ConnectionString);
                myConnection.Open();
                String query = "Insert into patient(PID,name,sex,address,contact_no,insurance_no,physc_id)values(@PID,@name,@sex,@address,@contact_no,@insurance_no,@physc_id)";
                SqlCommand command = new SqlCommand(query,myConnection);
                command.Parameters.AddWithValue("@PID",TextBox1.Text);
                command.Parameters.AddWithValue("@name", TextBox2.Text);
                command.Parameters.AddWithValue("@sex", sex);
                command.Parameters.AddWithValue("@address", TextBox4.Text);
                command.Parameters.AddWithValue("@contact_no", TextBox5.Text);
                command.Parameters.AddWithValue("@insurance_no", TextBox6.Text);
                command.Parameters.AddWithValue("@physc_id", TextBox7.Text);

                command.ExecuteNonQuery();
                Response.Redirect("WebForm2.aspx");


                myConnection.Close();
            
            }
            catch(Exception ex)
            {
                Response.Write("error connecting user "+ex.ToString());
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}