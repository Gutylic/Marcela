using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;

namespace Supervisor
{
    public partial class index : System.Web.UI.Page
    {

        Class1 Dato = new Class1();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Boton_Acceso_Click(object sender, EventArgs e)
        {
            if (Dato.Ingresar(Administrador.Text,Password.Text) == 1)
            {
                Session["Paciente"] = Administrador.Text;
                Response.Redirect("Panel_De_Control.aspx");
            }
            ScriptManager.RegisterClientScriptBlock(Page, typeof(string), "", "alert('Datos Ingresados Erroneos');", true);
            return;
            
        }
    }
}