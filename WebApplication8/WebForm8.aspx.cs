using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Net.NetworkInformation;
using System.IO;

namespace WebApplication8
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage(TextBox1.Text,TextBox3.Text);
            mail.Subject = TextBox4.Text;
            mail.Body = TextBox5.Text+TextBox1.Text;
            if (FileUpload1.HasFile)
            {
                String FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                mail.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileName));

            }
            mail.IsBodyHtml = false;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;

            NetworkCredential networkcred = new NetworkCredential(TextBox1.Text,TextBox2.Text);
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = networkcred;
            smtp.Port = 587;
            smtp.Send(mail);
            Response.Write("Send mail");
            Response.Redirect("WebForm8.aspx");

        }
    }
}