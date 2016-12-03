using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MCTuristic_Centro_Historico.GUI
{
    public partial class GestionEstablecimientos : System.Web.UI.Page
    {
        localhost.WsMCTuristic owebService = new localhost.WsMCTuristic();
        localhost.EstablecimientoBO oEstablecimientoBO = new localhost.EstablecimientoBO();
        protected void Page_Load(object sender, EventArgs e)
        {
            //CargarEstablecimientos();
        }
        private void CargarEstablecimientos()
        {
            ASPxGridView1.DataSource = owebService.establecimiento_AdminWS();
            ASPxGridView1.DataBind();
        }

        protected void btnServicios_Click(object sender, EventArgs e)
        {
            Session["IdEstablecimiento"] = txtIdEstablecimiento.Text;
            Response.Redirect("GestionServicios.aspx");
        }
        private localhost.EstablecimientoBO RecuperarDatos()
        {
            oEstablecimientoBO = new localhost.EstablecimientoBO();
            oEstablecimientoBO.NombreEstable = txtNombre.Text;
            oEstablecimientoBO.TelefonoEstable = txtTelefono.Text;
            oEstablecimientoBO.PagFacebook= txtFacebook.Text;
            oEstablecimientoBO.HoraInicioEstable = txtAbrir.Text;
            oEstablecimientoBO.HoraCierreEstable = txtCerrar.Text;
            return oEstablecimientoBO;

        }




    }
}