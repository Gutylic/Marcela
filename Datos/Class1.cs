using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Class1
    {

        DataClassesDataContext db = new DataClassesDataContext();

        public int Ingresar(string Cliente, string Password) 
        {

            var valor = db.Usuarios.Any(p => p.Correo == Cliente && p.Contrasena == Password);
        
            if (valor == false)
            {
                return 0;
            
            }
            return 1;
        
        }

        public string Nombre_Pasciente(string Cliente)
        {
            string Valor = (from p in db.Usuarios where p.Correo == Cliente select p.Nombre).Single();

            return Valor;
        }

        public string Consulta_Pasciente(string Cliente)
        {
            string Valor = (from p in db.Usuarios where p.Correo == Cliente select p.Consulta.ToString()).Single();

            return Valor;
        
        }

        public List<Usuarios> Todos()
        { 
            return (from p in db.Usuarios select p).ToList();
        }

        public List<Usuarios> Algunos(int Identificador)
        {
            return (from p in db.Usuarios where p.ID_Paciente == Identificador select p).ToList();
        }

        public int Cantidad() 
        {
            return ((from p in db.Usuarios select p).Count());
        }


        public void Actualizar(int Identificador,string Nombre,string Apellido,string Celular, string Telefono, string Pais, string Consulta,string Correo)
        {
            Usuarios usu = db.Usuarios.Single(p => p.ID_Paciente == Identificador);
            usu.Nombre = Nombre;
            usu.Apellido = Apellido;
            usu.Celular = Celular;
            usu.Telefono = Telefono;
            usu.Pais = Pais;
            usu.Correo = Correo;

            string[] fecha = new string[2];
            fecha = Consulta.Split('/');
            Consulta = fecha[2] + "-" + fecha[0] + "-" + fecha[1];

            usu.Consulta = Convert.ToDateTime(Consulta);
            db.SubmitChanges();
        }

        public void Borrar(int Identificador) 
        {
            Usuarios usu = db.Usuarios.Single(p => p.ID_Paciente == Identificador);
            db.Usuarios.DeleteOnSubmit(usu);
            db.SubmitChanges();
        }

        public void Insertar(int Identificador, string Nombre, string Apellido, string Celular, string Telefono, string Pais, string Consulta, string Correo) 
        {
            Usuarios usu = new Usuarios();
            usu.Nombre = Nombre;
            usu.Apellido = Apellido;
            usu.Celular = Celular;
            usu.Telefono = Telefono;
            usu.Pais = Pais;
            usu.Correo = Correo;
            usu.Contrasena = "hipnosis";
            


            usu.Consulta = Convert.ToDateTime(Consulta);
            db.Usuarios.InsertOnSubmit(usu);
            db.SubmitChanges();
        }
    }
}
