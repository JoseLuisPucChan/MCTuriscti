using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MCTuristic_Centro_Historico.GUI
{
    public partial class Contactanos : System.Web.UI.Page
    {
        localhost.WsMCTuristic oservicio = new localhost.WsMCTuristic();
        localhost.ContactanosBO ocontactanos = new localhost.ContactanosBO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            ocontactanos.NombreContacto = txtNombre.Text;
            ocontactanos.EmailContacto = txtEmail.Text;
            ocontactanos.ApellidoContacto = txtApellidos.Text;
            ocontactanos.Asunto = txtAsunto.Text;
            ocontactanos.Contenido = txtContenido.Text;
           int i= oservicio.InsertarContactanos(ocontactanos);
            if(i>0)
            {
                txtNombre.Text = String.Empty;
                txtEmail.Text = String.Empty;
                txtApellidos.Text = String.Empty;
                txtAsunto.Text = String.Empty;
                txtContenido.Text = String.Empty;
            }
            
        }
    }
}