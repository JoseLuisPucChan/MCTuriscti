using MCTuristic_Centro_Historico.localhost;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MCTuristic_Centro_Historico.GUI
{
    public partial class GestionUsuariosGUI : System.Web.UI.Page
    {
        localhost.WsMCTuristic oServicios = new localhost.WsMCTuristic();
        localhost.UsuarioBO oUsario = new localhost.UsuarioBO();
        localhost.DireccionBO oDireccionUser = new DireccionBO();
        byte[] foto;
        protected void Page_Load(object sender, EventArgs e)
        {
          
                Editar.Visible = false;
                CargarUsuario();
            
            
        }
        private void CargarUsuario()
        {
            ASPxGridView1.DataSource = oServicios.usuario_adminWS();
            ASPxGridView1.DataBind();
        }

      

        protected void lbtnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                int i = oServicios.InsertarUsuario(RecuperarInformacion());
                if (i > 0)
                {
                    Session["idUsuario"] = oServicios.obtener_usuarioid();
                    int y = oServicios.InsertarDireccion(RecuperarDireccion());
                    if (i > 0)
                    {
                        LimpiarControles();
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            CargarUsuario();
        }
        private void LimpiarControles()
        {
            txtNombre.Text = string.Empty;
            txtApellidos.Text= string.Empty;
            txtCorreo.Text= string.Empty;
            txtFecha.Text = string.Empty;
            txtContrasena.Text = string.Empty;
            txtTelefono.Text  = string.Empty;
            txtCalle.Text = string.Empty;
            txtCruzamiento.Text = string.Empty;
            txtNumero.Text = string.Empty;
            txtDescripcion.Text = string.Empty;
            txtColonia.Text = string.Empty;
            txtEstado.Text = string.Empty;
            txtCP.Text = string.Empty;
            imgFoto.ImageUrl = null;
        }
        //--------------------Recolección de Información-----------------------------------
        private localhost.UsuarioBO RecuperarInformacion()
        {
            localhost.UsuarioBO oUsuariosBO = new UsuarioBO();
            oUsuariosBO.NombreUsuario = txtNombre.Text.Trim();
            oUsuariosBO.ApellidosUsuario = txtApellidos.Text.Trim();
            oUsuariosBO.EmailUsuario = txtCorreo.Text.Trim();
            oUsuariosBO.FecharNacUsuario = txtFecha.Text;
            oUsuariosBO.Foto = (Byte[])Session["arreglo"];
            oUsuariosBO.ContraseñaUsuario = txtContrasena.Text;
            oUsuariosBO.TelefonoUsuario = txtTelefono.Text.Trim();
            return oUsuariosBO;
        }
        private localhost.DireccionBO RecuperarDireccion()
        {
            oDireccionUser = new DireccionBO();
            oDireccionUser.Calle = txtCalle.Text.Trim();
            oDireccionUser.Cruzamiento = txtCruzamiento.Text.Trim();
            oDireccionUser.Numero = txtNumero.Text;
            oDireccionUser.DescripcionDireccion = txtDescripcion.Text;
            oDireccionUser.Colonia = txtColonia.Text.Trim();
            oDireccionUser.Estado = txtEstado.Text.Trim();
            oDireccionUser.CodPostal = txtCP.Text;
            oDireccionUser.IdUsuario = Convert.ToInt32(Session["idUsuario"]);
            return oDireccionUser;
        }


        private bool VerificarArchivoImg()
        {
            if (fuFoto.HasFile)
            {
                string ext = System.IO.Path.GetExtension(fuFoto.FileName);
                if (ext == ".jpeg" || ext == ".jpg" || ext == ".png")
                {
                    //string path = Server.MapPath(@"\Recursos\");
                    //fu.SaveAs(path + fu.FileName);
                    HttpPostedFile imagen = fuFoto.PostedFile;
                    int tamaño = imagen.ContentLength;
                    Byte[] arreglo = new Byte[tamaño];
                    imagen.InputStream.Read(arreglo, 0, tamaño);
                    Session["arreglo"] = arreglo;
                    Session["Url"] = ConvertirImagenStringWebUrl(arreglo, ext);
                }
                return true;
            }
            else
            {
                Response.Write("<h3>Solo puedes seleccionar archivos tipo .jpeg , .jpg o .png</h3>");
            }
            return false;
        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
            if (VerificarArchivoImg() == true)
            {
                imgFoto.ImageUrl = (string)Session["Url"];
            }
        }

        //public Image RecuperarImagen(string Imagen)
        //{
        //    // Convert Base64 String to byte[]
        //    byte[] imageBytes = Convert.FromBase64String(Imagen);
        //    MemoryStream ms = new MemoryStream(imageBytes, 0,
        //      imageBytes.Length);

        //    // Convert byte[] to Image
        //    ms.Write(imageBytes, 0, imageBytes.Length);
        //    Image image = Image.FromStream(ms, true);
        //    return image;
        //}

        public string ConvertirImagenStringWeb(Byte[] arreglo)
        {
            string imagen = Convert.ToBase64String(arreglo, 0, arreglo.Length);
            return imagen;
        }

        public string RecuperarImagenWebUrl(string Imagen)
        {
            // Convert Base64 String to byte[]
            byte[] imageBytes = Convert.FromBase64String(Imagen);
            string image = Convert.ToBase64String(imageBytes, 0, imageBytes.Length);
            image = "data:image/.jpeg" + "jpeg;base64," + image;
            return image;
        }

        public string ConvertirImagenStringWebUrl(Byte[] arreglo,
    string extension)
        {
            string url = Convert.ToBase64String(arreglo, 0, arreglo.Length);
            url = "data:image/" + extension + "jpeg;base64," + url;
            return url;
        }

        protected void ASPxGridView1_RowCommand(object sender, DevExpress.Web.ASPxGridViewRowCommandEventArgs e)
        {
            if (e.CommandArgs.CommandArgument.ToString() == "Editar")
            {
                GestioUsuarios.Visible = false;
                Editar.Visible = true;
                lblNuevo.Visible = true;
                txtIDUsuario .Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Código").ToString();
                txtIdDireccion.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "idDireccion").ToString();
                txtNombreEdit.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Nombre").ToString();
                txtApellidosEdit.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Apellidos").ToString();
                txtEmailEdit.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Email").ToString();
                txtCelularEdit .Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Teléfono").ToString();
                txtFechaNacimientoEdit.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "FechaNacimiento").ToString();
                txtCalleEdit.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Calle").ToString();
                txtCruzamientoEdit.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Cruzamiento").ToString();
                txtNumeroCalleEdit.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Numero").ToString();
                txtColoniaEdit.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Colonia").ToString();
                txtDescripcionEdit.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Descripcion").ToString();
                txtEstadoEdit.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Estado").ToString();
                txtCodigoPostaEdit.Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "CodPostal").ToString();
                Session["arreglo1"] = (byte[])ASPxGridView1.GetRowValues(e.VisibleIndex, "Foto");
                FotoPre.ImageUrl = ConvertirImagenStringWebUrl((Byte[])Session["arreglo1"], "jpg");
                txtContraseñaEdit .Text = ASPxGridView1.GetRowValues(e.VisibleIndex, "Contraseña").ToString();
            }
        }

        protected void lblNuevo_Click(object sender, EventArgs e)
        {
            Editar.Visible = false;
            GestioUsuarios.Visible = true;
        }



        protected void lbtnModificar_Click(object sender, EventArgs e)
        {
            ModificarUser();
            GestioUsuarios.Visible = false;
            Editar.Visible = true;
        }
     
        private void ModificarUser()
        {
            localhost.WsMCTuristic owebService = new localhost.WsMCTuristic();

            localhost.UsuarioBO oUsuariosBO = new UsuarioBO();
            oUsuariosBO.IdUsuario = Convert.ToInt32( txtIDUsuario.Text);
            oUsuariosBO.NombreUsuario = txtNombreEdit.Text;
            oUsuariosBO.ApellidosUsuario = txtApellidosEdit.Text;
            oUsuariosBO.EmailUsuario = txtEmailEdit.Text;
            oUsuariosBO.FecharNacUsuario = txtFechaNacimientoEdit.Text;
            oUsuariosBO.TelefonoUsuario = txtCelularEdit.Text;
            oUsuariosBO.ContraseñaUsuario = txtContraseñaEdit.Text;
             oUsuariosBO.Foto = (Byte[])Session["arreglo1"];
            int i = owebService.ModificarUsuario(oUsuariosBO);
            if (i > 0)
            {
                ModificarDireccion();
            }
            CargarUsuario();
        }
        private void ModificarDireccion()
        {
            localhost.WsMCTuristic owebService = new localhost.WsMCTuristic();
            localhost.DireccionBO oDireccionBO = new localhost.DireccionBO();
            oDireccionBO.IdDireccion = Convert.ToInt32(txtIdDireccion.Text);
            oDireccionBO.Calle = txtCalleEdit.Text;
            oDireccionBO.Numero = txtNumeroCalleEdit.Text;
            oDireccionBO.Estado = txtEstadoEdit.Text;
            oDireccionBO.Cruzamiento = txtCruzamientoEdit.Text;
            oDireccionBO.CodPostal = txtCodigoPostaEdit .Text;
            oDireccionBO.Colonia = txtColoniaEdit.Text;
            oDireccionBO.DescripcionDireccion = txtDescripcionEdit.Text;
            oDireccionBO.IdUsuario = Convert.ToInt32(txtIDUsuario.Text);
            int i = owebService.ModificarDireccion(oDireccionBO);
            if (i > 0)
            {
              
            }
            else
            {
                
            }
        }

        protected void lbtnEliminar_Click(object sender, EventArgs e)
        {
            localhost.WsMCTuristic owebService = new localhost.WsMCTuristic();
            localhost.DireccionBO oDireccionBO = new localhost.DireccionBO();
            localhost.UsuarioBO oUsuariosBO = new UsuarioBO();
            oDireccionBO.IdDireccion = Convert.ToInt32(txtIdDireccion.Text);
            oUsuariosBO.IdUsuario = Convert.ToInt32(txtIDUsuario .Text);
            int i = owebService.EliminarDireccion(oDireccionBO);
            if (i > 0)
            {
                int y = owebService.EliminarUsuario(oUsuariosBO);
                if (y > 0)
                {
                    CargarUsuario();
                    Editar.Visible = false;
                    GestioUsuarios.Visible = true;
                }
            }
        }
    }
}