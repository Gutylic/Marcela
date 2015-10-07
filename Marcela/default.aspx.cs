using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Text;

namespace Marcela
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContactUs_Click(object sender, EventArgs e)
        {
            
            MailMessage Email = new MailMessage();
            StringBuilder sbBody = new StringBuilder();

            sbBody.Append("<html xmlns='http://www.w3.org/1999/xhtml'>");
            sbBody.Append("<head><title>Untitled Document</title>");
            sbBody.Append("<style type='text/css'>body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;background-color: #E1E0F2;}");
            sbBody.Append("body,td,th {font-family: Verdana, Geneva, sans-serif;font-size: 12px;}</style></head><body>");
            sbBody.Append("<strong><h3>.::FORMULÁRIO DE CONTATO</h3></strong><br />");
            sbBody.Append("<b>Nombre:</b><br />");
            //Adiciona texto digitado no TextBox txtNome
            sbBody.Append(name.Text);
            sbBody.Append("<br /><br />");
            sbBody.Append("<b>E-Mail:</b><br />");
            //Adiciona texto digitado no TextBox txtMail
            sbBody.Append(email.Text);
            sbBody.Append("<br /><br />");
            sbBody.Append("<b>Mensaje del Contacto:</b><br />");
            
            //Adiciona texto digitado no TextBox txtMensagem
            sbBody.Append(message.Text);
            sbBody.Append("<br /><br />");
            sbBody.Append("<br /></body></html>");

            
            
            Email.From = new MailAddress("xeladostechnology@gmail.com"); // otro cambio si modifico el correo
            Email.To.Add("gutylic@gmail.com");
            Email.Subject = "Mensaje desde la pagina web Marcela Escobedo";
            
            string strMensaje = string.Format("Nombre: {1}{0}Correo: {2}{0} Mensaje:{3} ", Environment.NewLine, name.Text, email.Text, message.Text);

            Email.Body = sbBody.ToString();
            Email.IsBodyHtml = true;
            
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential("xeladostechnology@gmail.com", "qjdkuhvekcwyunpm"); // otro cambio si modifico el correo
            smtp.EnableSsl = true;
            try
            {
                smtp.Send(Email);
                return;  // todo OK                                
            }
            catch (Exception)
            {
                return; // no conectado                            
            }
        }
    }
}