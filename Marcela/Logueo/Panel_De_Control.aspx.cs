using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;

namespace Marcela.Logueo
{
    public partial class Panel_De_Control : System.Web.UI.Page
    {
        Class1 Datos = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            Etiqueta_Administrador.Text = "Paciente: " + Datos.Nombre_Pasciente((string)Session["Paciente"]).ToUpper();
            Etiqueta_Consulta.Text = Datos.Consulta_Pasciente((string)Session["Paciente"]);
        }

        protected void Cerrar_Session_Click(object sender, EventArgs e)
        {
            Session.Clear(); // limpiar todas las variables de sesion del usuario
            Session.Abandon(); // abandonar las variables de sesion (esto s)
            Response.Redirect("../default.aspx");
        }
    }
}