using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;


namespace Marcela
{
    public partial class Panel : System.Web.UI.Page
    {
        Class1 val = new Class1();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) // se carga la primera vez al abrir la pagina
            {
                Condiciones_Paginacion_Dios();
                Mostrar_Datos_Dios(0);

            }
        }

       
        public void Condiciones_Paginacion_Dios() // pregunta en que momento tomo las condiciones del paginado si cuando arranca la pagina o cuando presiono el boton de buscar
        {
            
            ViewState["Pagina"] = 0; // posiciono por las dudas la pagina en cero siempre
            Interno_Dios.Visible = false; // contiene siguiente y anterior de las paginaciones centrales
            Siguiente_Dios_Primero.Visible = true; // siguiente de la primera pagina
            Anterior_Dios_Ultimo.Visible = false; // anterior de la ultima pagina

            ViewState["Cantidad_De_Datos"] = val.Cantidad(); // cuenta la cantidad de datos

            ViewState["Cantidad_De_Paginas"] = (int)ViewState["Cantidad_De_Datos"] / 2; // cantidad de paginas segun la cantidad de datos            
            ViewState["Resto"] = (int)ViewState["Cantidad_De_Datos"] % 2; // me dice cuantos datos faltan para completar una pagina completa
            if ((int)ViewState["Resto"] == 0) // sin resto hay una cantidad de paginas completas y le debo restar uno para asegurarme que como inicio de cero la ultima pagina no se encuentre vacia
            {
                ViewState["Cantidad_De_Paginas"] = (int)ViewState["Cantidad_De_Paginas"] - 1;
            }
            if ((int)ViewState["Cantidad_De_Datos"] <= 2) // para saber si hay menos de 20 datos no aparezca el boton de siguiente
            {
                Siguiente_Dios_Primero.Visible = false;
            }
        }

        protected void Siguiente_Dios_Click(object sender, EventArgs e)
        {
            Formulario_Supervisor.Visible = false;
           
            ViewState["Pagina"] = (int)ViewState["Pagina"] + 1;// sumo una pagina
            if ((int)ViewState["Pagina"] == (int)ViewState["Cantidad_De_Paginas"]) // mira si la pagina en la que estoy es igual a la pagina final (estoy en la ultima pagina)
            {
                Mostrar_Datos_Dios((int)ViewState["Pagina"]); // carga cada presion el gridview

                Interno_Dios.Visible = false; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo 
                Extremo_Dios.Visible = true; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo (contiene anterior ultimo y siguiente primero)
                Siguiente_Dios_Primero.Visible = false; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo 
                Anterior_Dios_Ultimo.Visible = true; // como estoy en la ultima pagina solo debe mostrar el anterior ultimo 
            }
            else // sin no estoy en la ultima pagina
            {
                Mostrar_Datos_Dios((int)ViewState["Pagina"]); // carga cada presion el gridview
                Interno_Dios.Visible = true; // estoy en las paginas del centro
                Extremo_Dios.Visible = false; // no muestra ni siguiente ni anterior de las paginas ultima e inicial
            }
        }

        protected void Anterior_Dios_Click(object sender, EventArgs e)
        {
            Formulario_Supervisor.Visible = false;
            
            ViewState["Pagina"] = (int)ViewState["Pagina"] - 1; // resto una pagina
            if ((int)ViewState["Pagina"] == 0) // mira si esta en la primera pagina
            {
                Mostrar_Datos_Dios((int)ViewState["Pagina"]); // carga cada presion el gridview

                Interno_Dios.Visible = false;// como estoy en la primera pagina solo debe mostrar el siguiente primero 
                Extremo_Dios.Visible = true;// como estoy en la primera pagina solo debe mostrar el siguiente primero (contiene anterior ultimo y siguiente primero)
                Siguiente_Dios_Primero.Visible = true;// como estoy en la primera pagina solo debe mostrar el siguiente primero
                Anterior_Dios_Ultimo.Visible = false;// como estoy en la primera pagina solo debe mostrar el siguiente primero
            }
            else// sin no estoy en la primera pagina
            {
                Mostrar_Datos_Dios((int)ViewState["Pagina"]); // carga cada presion el gridview
                Interno_Dios.Visible = true; // estoy en las paginas del centro
                Extremo_Dios.Visible = false;// no muestra ni siguiente ni anterior de las paginas ultima e inicial
            }
        }


        public void Mostrar_Datos_Dios(int Pagina)
        {
            GridView_Supervisor.DataSource = val.Todos().Skip(Pagina * 2).Take(2);;
            GridView_Supervisor.DataBind();
        }

        protected void Identificador_Supervisor(object sender, EventArgs e) // convierto al datalist en editable 
        {

            Formulario_Supervisor.Visible = true;
            GridViewRow row = GridView_Supervisor.SelectedRow; // defiene la variable row del tipo gridview
            Session["ID_Paciente"] = GridView_Supervisor.DataKeys[row.RowIndex].Value; // captura el identificador del Administrador seleccionado
            List<Usuarios> Datos = val.Algunos((int)Session["ID_Paciente"]); // carga los datos del administrador elegido por el supervisor
            Nombre_Supervisor.Text = Datos[0].Nombre; // carga el administrador de la base
            Password_Supervisor.Text = Datos[0].Contrasena; // carga el password de la base
            Apellido_Supervisor.Text = Datos[0].Apellido;
            Skype_Supervisor.Text = Datos[0].Skype; // carga el password de la base
            Telefono_Supervisor.Text = Datos[0].Telefono;
            Pais_Supervisor.Text = Datos[0].Pais;
            Correo_Supervisor.Text = Datos[0].Correo;
            Consulta_Supervisor.Text = String.Format("{0:d}", Datos[0].Consulta);
            
            
            //IP_Supervisor.Text = Datos[0].IP_Address; // carga el IP de la base este ip corresponde desde la ubicacion que se bloqueo el administrador
            //CheckBox_Bloqueo_Supervisor.Checked = Datos[0].Administrador_Bloqueado; // carga de la base si el administrador esta bloqueado
        }

        protected void Boton_Actualizar_Supervisor_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime valr = Convert.ToDateTime(Consulta_Supervisor.Text);
            }
            catch
            {
               
                return;
            }

            val.Actualizar((int)Session["ID_Paciente"], Nombre_Supervisor.Text, Apellido_Supervisor.Text, Celular_Supervisor.Text, Telefono_Supervisor.Text, Pais_Supervisor.Text, Consulta_Supervisor.Text,Correo_Supervisor.Text);
            Formulario_Supervisor.Visible = false;
            string alerta1 = @"alert('Actualización realizada')"; 
              // window.location.reload();";
            
            ScriptManager.RegisterStartupScript(this, typeof(Page), "", alerta1, true);
            GridView_Supervisor.DataSource = val.Todos();
            GridView_Supervisor.DataBind();
            return;
        }

        protected void Boton_Nuevo_Supervisor_Click(object sender, EventArgs e)
        {
            if (Boton_Nuevo_Supervisor.Text == "Nuevo")
            {
                Nombre_Supervisor.Text = string.Empty;
                Password_Supervisor.Text = string.Empty;
                Apellido_Supervisor.Text = string.Empty;
                Skype_Supervisor.Text = string.Empty;
                Telefono_Supervisor.Text = string.Empty;
                Pais_Supervisor.Text = string.Empty;
                Correo_Supervisor.Text = string.Empty;
                Consulta_Supervisor.Text = string.Empty;

                Boton_Nuevo_Supervisor.Text = "Insertar";
                return;
            }

            if (Boton_Nuevo_Supervisor.Text == "Insertar")
            {

                if (Nombre_Supervisor.Text == string.Empty || Apellido_Supervisor.Text == string.Empty || Correo_Supervisor.Text == string.Empty) 
                {
                    return;
                }
              
               

                if (Consulta_Supervisor.Text == string.Empty)
                {
                    Consulta_Supervisor.Text = DateTime.Now.ToString();
                }
                try
                {
                    DateTime valr = Convert.ToDateTime(Consulta_Supervisor.Text);
                }
                catch
                {

                    return;
                }
                val.Insertar((int)Session["ID_Paciente"], Nombre_Supervisor.Text, Apellido_Supervisor.Text, Celular_Supervisor.Text, Telefono_Supervisor.Text, Pais_Supervisor.Text, Consulta_Supervisor.Text, Correo_Supervisor.Text);

                Boton_Nuevo_Supervisor.Text = "Nuevo";
                Formulario_Supervisor.Visible = false;
                string alerta = @"alert('Inserción realizada')";
                // window.location.reload();";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "", alerta, true);
                GridView_Supervisor.DataSource = val.Todos();
                GridView_Supervisor.DataBind();
                return;
            }
        }

        protected void Boton_Borrar_Supervisor_Click(object sender, EventArgs e)
        {
            val.Borrar((int)Session["ID_Paciente"]);
            Formulario_Supervisor.Visible = false;
            string alerta = @"alert('Borrado realizado')";
            // window.location.reload();";

            ScriptManager.RegisterStartupScript(this, typeof(Page), "", alerta, true);
            GridView_Supervisor.DataSource = val.Todos();
            GridView_Supervisor.DataBind();
            return;
        }

    }

}