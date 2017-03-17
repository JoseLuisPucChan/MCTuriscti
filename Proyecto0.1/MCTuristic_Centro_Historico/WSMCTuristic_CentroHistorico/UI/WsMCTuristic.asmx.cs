using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.Script.Serialization;
using WSMCTuristic_CentroHistorico.BO;
using Newtonsoft.Json;
using System.Drawing;

namespace WSMCTuristic_CentroHistorico.UI
{
    /// <summary>
    /// Descripción breve de WsMCTuristic
    /// </summary>
    [WebService(Namespace = "http://MCTuristic.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WsMCTuristic : System.Web.Services.WebService
    {
        Services.CtrlUsuario oUsuarioCTRL;
        Services.CtrlDireccion oDireccionCTRL;
        Services.CtrlEstablecimiento oEstablecimiento;
        Services.CtrlEvento oEventoCTRL;
        Services.CtrlNotificaciones oNotificacionesCTRL;
        Services.CtrlServicio oServicioCTRL;
        Services.CtrlSitio oSitioCtrl;
        Services.CtrlSoporte oSoporteCTRL;
        Services.CtrlTipoServicio oTipoServicioCTRL;
        Services.CtrlTipoSitio oTipoSitioCtrl;
        Services.CtrlTipoSuscripcion oTipoSuscripcionCTRL;
        Services.CtrlContactanos oContactanosCTRL;
        Services.CtrlAdministrador oAdministradorCTRL;
        Services.CtrlComentario oComentariosCTRL;
        Services.CtrlSuscripcion oSuscripcionCTRL;


        //--------------------------ABC Usuarios-----------------------------
        #region "Gestión de Usuarios"  
        [WebMethod]
        public int InsertarUsuario(UsuarioBO obj)
        {
            UsuarioBO oUsuario = new UsuarioBO();
            oUsuario = obj;
            oUsuarioCTRL = new Services.CtrlUsuario();
            return oUsuarioCTRL.InsertarUsuario(oUsuario);
        }
        [WebMethod]
        public int ModificarUsuario(UsuarioBO obj)
        {
            UsuarioBO oUsuario = new UsuarioBO();
            oUsuario = obj;
            oUsuarioCTRL = new Services.CtrlUsuario();
            return oUsuarioCTRL.ModificarUsuario(oUsuario);
        }
        [WebMethod]
        public int EliminarUsuario(UsuarioBO obj)
        {
            UsuarioBO oUsuario = new UsuarioBO();
            oUsuario = obj;
            oUsuarioCTRL = new Services.CtrlUsuario();
            return oUsuarioCTRL.EliminarUsuario(oUsuario);
        }
        [WebMethod]
        public string obtener_usuarioid()
        {
            oUsuarioCTRL = new Services.CtrlUsuario();
            return oUsuarioCTRL.id_usuario();
        }
        [WebMethod]
        public DataTable LoginUsuario(UsuarioBO obj)
        {
            UsuarioBO oUsuario = obj;
            oUsuarioCTRL = new Services.CtrlUsuario();
            return oUsuarioCTRL.LoginUsuario(oUsuario);
        }
        //Nuevo webmethod Diosemir Nah
        [WebMethod]
        public DataSet usuario_adminWS()
        {
            oUsuarioCTRL = new Services.CtrlUsuario();
            return oUsuarioCTRL.topUsuarios_admin();
        }
        //Nuevo webmethod Diosemir Nah
        [WebMethod]
        public DataSet usuario_adminFiltradosWS()
        {
            oUsuarioCTRL = new Services.CtrlUsuario();
            return oUsuarioCTRL.topUsuarios_adminFiltrados();
        }
        //Nuevo webmethod Diosemir Nah
        [WebMethod]
        public DataSet usuario_userWS(UsuarioBO obj)
        {
            UsuarioBO oUsuario = new UsuarioBO();
            oUsuario = obj;
            oUsuarioCTRL = new Services.CtrlUsuario();
            return oUsuarioCTRL.topUsuarios_User(oUsuario);
        }
        #endregion

        //--------------------------ABC Direcciones-----------------------------
        #region "Gestión de Direccciones"
        [WebMethod]

        public int EliminarDireccion(DireccionBO obj)
        {
            DireccionBO oDireccion = new DireccionBO();
            oDireccion = obj;
            oDireccionCTRL = new Services.CtrlDireccion();
            return oDireccionCTRL.EliminarDireccion(oDireccion);
        }

        [WebMethod]
        public int InsertarDireccion(DireccionBO obj)
        {
            DireccionBO oDireccion = new DireccionBO();
            oDireccion = obj;
            oDireccionCTRL = new Services.CtrlDireccion();
            return oDireccionCTRL.InsertarDireccion(oDireccion);
        }
        [WebMethod]
        public int ModificarDireccion(DireccionBO obj)
        {
            DireccionBO oDireccion = new DireccionBO();
            oDireccion = obj;

            oDireccionCTRL = new Services.CtrlDireccion();
            return oDireccionCTRL.ModificarDireccion(oDireccion);
        }

        //......Admin
        [WebMethod]
        public int InsertarDireccion_admin(DireccionBO obj)
        {
            DireccionBO oDireccion = new DireccionBO();
            oDireccion = obj;
            oDireccionCTRL = new Services.CtrlDireccion();
            return oDireccionCTRL.InsertarDireccion_admin(oDireccion);
        }
        [WebMethod]
        public int ModificarDireccion_admin(DireccionBO obj)
        {
            DireccionBO oDireccion = new DireccionBO();
            oDireccion = obj;

            oDireccionCTRL = new Services.CtrlDireccion();
            return oDireccionCTRL.ModificarDireccion_admin(oDireccion);
        }
        #endregion

        //---------------------ABC Establecimiento-----------------------
        #region "Gestión de Establecimientos"
        [WebMethod]
        public int InsertarEstablecimiento(BO.EstablecimientoBO obj)
        {
            BO.EstablecimientoBO oEstablecimientoBO = new BO.EstablecimientoBO();
            oEstablecimientoBO = obj;
            oEstablecimiento = new Services.CtrlEstablecimiento();
            return oEstablecimiento.insertarEstablecimiento(oEstablecimientoBO);
        }

        [WebMethod]
        public int ModificarEstablecimiento(BO.EstablecimientoBO obj)
        {
            BO.EstablecimientoBO oEstablecimientoBO = new BO.EstablecimientoBO();
            oEstablecimientoBO = obj;
            oEstablecimiento = new Services.CtrlEstablecimiento();
            return oEstablecimiento.ModificarEstablecimiento(oEstablecimientoBO);
        }

        [WebMethod]
        public int EliminarEstablecimiento(BO.EstablecimientoBO obj)
        {
            BO.EstablecimientoBO oEstablecimientoBO = new BO.EstablecimientoBO();
            oEstablecimientoBO = obj;
            oEstablecimiento = new Services.CtrlEstablecimiento();
            return oEstablecimiento.EliminarEstablecimiento(oEstablecimientoBO);
        }

        //Nuevo webmethod Diosemir Nah
        [WebMethod]
        public DataSet establecimiento_UserWS(EstablecimientoBO obj)
        {
            EstablecimientoBO datos = obj;
            oEstablecimiento = new Services.CtrlEstablecimiento();
            return oEstablecimiento.topEstablecimientos_userDS(datos);
        }
        [WebMethod]
        //Nuevo webmethod Diosemir Nah

        public DataSet establecimiento_AdminWS()
        {
            oEstablecimiento = new Services.CtrlEstablecimiento();
            return oEstablecimiento.topEstablecimientos_adminDS();
        }
        #endregion

        //--------------------------ABC Evento-----------------------------
        #region "Gestión de Evento"

        [WebMethod]
        public int InsertarEvento(BO.EventoBO obj)
        {
            BO.EventoBO oEventoBO = new BO.EventoBO();
            oEventoBO = obj;
            oEventoCTRL = new Services.CtrlEvento();
            return oEventoCTRL.InsertarEvento(oEventoBO);
        }

        [WebMethod]
        public int ModificarEvento(BO.EventoBO obj)
        {
            BO.EventoBO oEventoBO = new BO.EventoBO();
            oEventoBO = obj;

            oEventoCTRL = new Services.CtrlEvento();
            return oEventoCTRL.ModificarEvento(oEventoBO);
        }
        [WebMethod]
        public int EliminarEvento(BO.EventoBO obj)
        {
            BO.EventoBO oEventoBO = new BO.EventoBO();
            oEventoBO = obj;

            oEventoCTRL = new Services.CtrlEvento();
            return oEventoCTRL.EliminarEvento(oEventoBO);
        }
        [WebMethod]
        public DataSet Ver_evento(BO.EventoBO obj)
        {
            BO.EventoBO oEventoBO = new BO.EventoBO();
            oEventoBO = obj;
            oEventoCTRL = new Services.CtrlEvento();
            return oEventoCTRL.ver_Eventos(oEventoBO);
        }

        [WebMethod]
        public DataSet Ver_evento_user(BO.EventoBO obj)
        {
            BO.EventoBO oEventoBO = new BO.EventoBO();
            oEventoBO = obj;
            oEventoCTRL = new Services.CtrlEvento();
            return oEventoCTRL.ver_Eventos_user(oEventoBO);
        }




        [WebMethod]
        public DataSet Ver_evento_admin(BO.EventoBO obj)
        {
            BO.EventoBO oEventoBO = new BO.EventoBO();
            oEventoBO = obj;
            oEventoCTRL = new Services.CtrlEvento();
            return oEventoCTRL.ver_Eventos_admin(oEventoBO);
        }
        #endregion
        //--------------------------ABC Notificaciones-----------------------------

        #region "Gestión de Notificaciones" 
        [WebMethod]
        public int InsertarNotificacion(BO.NotificacionesBO obj)
        {
            BO.NotificacionesBO oNotificacionesBO = new BO.NotificacionesBO();
            oNotificacionesBO = obj;

            oNotificacionesCTRL = new Services.CtrlNotificaciones();
            return oNotificacionesCTRL.InsertarNotificacion(oNotificacionesBO);
        }

        [WebMethod]
        public int ModificarNotificaciones(BO.NotificacionesBO obj)
        {
            BO.NotificacionesBO oNotificacionesBO = new BO.NotificacionesBO();
            oNotificacionesBO = obj;

            oNotificacionesCTRL = new Services.CtrlNotificaciones();
            return oNotificacionesCTRL.ModificarNotificacion(oNotificacionesBO);
        }

        [WebMethod]
        public int EliminarNotificaciones(BO.NotificacionesBO obj)
        {
            BO.NotificacionesBO oNotificacionesBO = new BO.NotificacionesBO();
            oNotificacionesBO = obj;

            oNotificacionesCTRL = new Services.CtrlNotificaciones();
            return oNotificacionesCTRL.EliminarNotificacion(oNotificacionesBO);
        }
        #endregion
        //--------------------------ABC Servicio-----------------------------
        #region "Gestión de Servicios Productos"
        [WebMethod]
        public int InsertarServicio(BO.ServicioBO obj)
        {
            BO.ServicioBO oServicioBO = new BO.ServicioBO();
            oServicioBO = obj;

            oServicioCTRL = new Services.CtrlServicio();
            return oServicioCTRL.InsertarServicio(oServicioBO);
        }


        [WebMethod]
        public int ModificarServicio(BO.ServicioBO obj)
        {
            BO.ServicioBO oServicioBO = new BO.ServicioBO();
            oServicioBO = obj;

            oServicioCTRL = new Services.CtrlServicio();
            return oServicioCTRL.ModificarServicio(oServicioBO);
        }

        [WebMethod]
        public int EliminarServicio(BO.ServicioBO obj)
        {
            BO.ServicioBO oServicioBO = new BO.ServicioBO();
            oServicioBO = obj;

            oServicioCTRL = new Services.CtrlServicio();
            return oServicioCTRL.EliminarServicio(oServicioBO);
        }


        [WebMethod]
        //Nuevo webmethod Diosemir Nah
        public DataSet top12Servicios()
        {
            oServicioCTRL = new Services.CtrlServicio();
            return oServicioCTRL.top12Servicios();
        }

        [WebMethod]
        //Nuevo webmethod Diosemir Nah
        public DataSet ver_DetallProducto(BO.ServicioBO obj)
        {
            BO.ServicioBO oServicioBO = new BO.ServicioBO();
            oServicioBO = obj;
            oServicioCTRL = new Services.CtrlServicio();
            return oServicioCTRL.ver_DetalleProducto(obj);
        }


        [WebMethod]
        //Nuevo webmethod Diosemir Nah
        public DataSet topServicios(BO.ServicioBO obj)
        {
            BO.ServicioBO oServicioBO = new BO.ServicioBO();
            oServicioBO = obj;
            oServicioCTRL = new Services.CtrlServicio();
            return oServicioCTRL.topServicios_user(obj);
        }
        [WebMethod]
        //Nuevo webmethod Diosemir Nah
        public DataSet topServicios_admin(BO.ServicioBO obj)
        {
            BO.ServicioBO oServicioBO = new BO.ServicioBO();
            oServicioBO = obj;
            oServicioCTRL = new Services.CtrlServicio();
            return oServicioCTRL.topServicios_admin(oServicioBO);
        }
        [WebMethod]
        public byte[] verFotoSer(int Ser)
        {
            oServicioCTRL = new Services.CtrlServicio();
            return oServicioCTRL.verfoto(Ser);
        }
        #endregion
        //--------------------- ABC Sitio---------------
        #region "Gestión de Sitios"
        [WebMethod]
        public int InsertarSitio(SitioBO obj)
        {
            SitioBO oSitio = new SitioBO();
            oSitio = obj;

            oSitioCtrl = new Services.CtrlSitio();
            return oSitioCtrl.InsertarSitio(oSitio);
        }
        [WebMethod]
        public int ModificarSitio(SitioBO obj)
        {
            SitioBO oSitio = new SitioBO();
            oSitio = obj;

            oSitioCtrl = new Services.CtrlSitio();
            return oSitioCtrl.ModificarSitio(oSitio);
        }
        [WebMethod]
        public int EliminarSitio(SitioBO obj)
        {
            SitioBO oSitio = new SitioBO();
            oSitio = obj;

            oSitioCtrl = new Services.CtrlSitio();
            return oSitioCtrl.EliminarSitio(oSitio);
        }
        [WebMethod]
        //Nuevo webmethod Diosemir Nah
        public DataSet sitio_WS()
        {
            oSitioCtrl = new Services.CtrlSitio();
            return oSitioCtrl.topSitioDS();
        }
        #endregion
        //------------ABC Soporte-------------------
        #region "Gestión de Soporte técnico"
        [WebMethod]
        public int InsertarSoporte(SoporteBO obj)
        {
            SoporteBO oSoporte = obj;
            oSoporteCTRL = new Services.CtrlSoporte();
            return oSoporteCTRL.InsertarSoporte(oSoporte);
        }
        [WebMethod]
        public int ModificarSoporte(SoporteBO obj)
        {
            SoporteBO oSoporte = obj;
            oSoporteCTRL = new Services.CtrlSoporte();
            return oSoporteCTRL.ModificarSoporte(oSoporte);
        }
        [WebMethod]
        public int EliminarSoporte(SoporteBO obj)
        {
            SoporteBO oSoporte = obj;
            oSoporteCTRL = new Services.CtrlSoporte();
            return oSoporteCTRL.EliminarSoporte(oSoporte);
        }
        #endregion
        //----------------ABC TipoServicio -----------
        #region "Gestión de Tipo de Servicio"
        [WebMethod]
        public int InsertarTipoServicio(TipoServicioBO obj)
        {
            TipoServicioBO oTipoServicio = obj;
            oTipoServicioCTRL = new Services.CtrlTipoServicio();
            return oTipoServicioCTRL.InsertarTipoServicio(oTipoServicio);
        }
        [WebMethod]
        public int ModificarTipoServicio(TipoServicioBO obj)
        {
            TipoServicioBO oTipoServicio = obj;
            oTipoServicioCTRL = new Services.CtrlTipoServicio();
            return oTipoServicioCTRL.ModificarTipoServicio(oTipoServicio);
        }
        [WebMethod]
        public int EliminarTipoServicio(TipoServicioBO obj)
        {
            TipoServicioBO oTipoServicio = obj;
            oTipoServicioCTRL = new Services.CtrlTipoServicio();
            return oTipoServicioCTRL.EliminarTipoServicio(oTipoServicio);
        }
        //Nuevo webmethod Diosemir Nah
        [WebMethod]
        public DataSet tipoServicioWS()
        {
            oTipoServicioCTRL = new Services.CtrlTipoServicio();
            return oTipoServicioCTRL.topTipoServicios();






        }
        #endregion
        //------------- ABC TipoSitio ----------------
        #region "Gestión de Tipo de Sitio"
        [WebMethod]
        public int InsertarTipoSitio(TipoSitioBO obj)
        {
            TipoSitioBO oTipoSitio = obj;
            oTipoSitioCtrl = new Services.CtrlTipoSitio();
            return oTipoSitioCtrl.InsertarTipoSitio(oTipoSitio);
        }
        [WebMethod]
        public int ModificarTipoSitio(TipoSitioBO obj)
        {
            TipoSitioBO oTipoSitio = obj;
            oTipoSitioCtrl = new Services.CtrlTipoSitio();
            return oTipoSitioCtrl.ModificarTipoSitio(oTipoSitio);
        }
        [WebMethod]
        public int EliminarTipoSitio(TipoSitioBO obj)
        {
            TipoSitioBO oTipoSitio = obj;
            oTipoSitioCtrl = new Services.CtrlTipoSitio();
            return oTipoSitioCtrl.EliminarTipoSitio(oTipoSitio);
        }
        [WebMethod]
        public DataSet tipoSitios()
        {
            oTipoSitioCtrl = new Services.CtrlTipoSitio();
            return oTipoSitioCtrl.tipoSitio();
        }
        #endregion

        //------------ ABC TipoSuscripcion --------------
        #region "Tipo de Suscripción"
        [WebMethod]
        public int InsertarTipoSuscripcion(TipoSuscripcionBO obj)
        {
            TipoSuscripcionBO oTipoSuscripcion = obj;
            oTipoSuscripcionCTRL = new Services.CtrlTipoSuscripcion();
            return oTipoSuscripcionCTRL.InsertarTipoSuscripcion(oTipoSuscripcion);
        }
        [WebMethod]
        public int ModificarTipoSuscripcion(TipoSuscripcionBO obj)
        {
            TipoSuscripcionBO oTipoSuscripcion = obj;
            oTipoSuscripcionCTRL = new Services.CtrlTipoSuscripcion();
            return oTipoSuscripcionCTRL.ModificarTipoSuscripcion(oTipoSuscripcion);
        }
        [WebMethod]
        public int EliminarTipoSuscripcion(TipoSuscripcionBO obj)
        {
            TipoSuscripcionBO oTipoSuscripcion = obj;
            oTipoSuscripcionCTRL = new Services.CtrlTipoSuscripcion();
            return oTipoSuscripcionCTRL.EliminarTipoSuscripcion(oTipoSuscripcion);
        }
        #endregion
        //---------------------ABC Contactanos --------------
        #region "Gestión de contactanos"
        [WebMethod]
        public int InsertarContactanos(ContactanosBO obj)
        {
            ContactanosBO oContactanos = obj;
            oContactanosCTRL = new Services.CtrlContactanos();
            return oContactanosCTRL.InsertarContactanos(oContactanos);
        }
        [WebMethod]
        public int ModificarContactanos(ContactanosBO obj)
        {
            ContactanosBO oContactanos = obj;
            oContactanosCTRL = new Services.CtrlContactanos();
            return oContactanosCTRL.ModificarContactanos(oContactanos);
        }
        [WebMethod]
        public int EliminarContactanos(ContactanosBO obj)
        {
            ContactanosBO oContactanos = obj;
            oContactanosCTRL = new Services.CtrlContactanos();
            return oContactanosCTRL.EliminarContactanos(oContactanos);
        }
        #endregion
        //---------------------ABC Administrador-----------------
        #region "Gestión de Administrador"
        [WebMethod]
        public string obtener_adminid()
        {
            oAdministradorCTRL = new Services.CtrlAdministrador();
            return oAdministradorCTRL.id_admin();
        }
        [WebMethod]
        public DataTable Login(AdministradorBO obj)
        {
            AdministradorBO oAdministrador = obj;
            oAdministradorCTRL = new Services.CtrlAdministrador();
            return oAdministradorCTRL.LoginUsuario(oAdministrador);
        }

        [WebMethod]
        public DataSet Ver_admin_log(AdministradorBO obj)
        {
            AdministradorBO oAdministrador = obj;
            oAdministradorCTRL = new Services.CtrlAdministrador();
            return oAdministradorCTRL.Ver_admin_log(oAdministrador);
        }

        [WebMethod]
        public DataSet ver_Admin_admin()
        {
            oAdministradorCTRL = new Services.CtrlAdministrador();
            return oAdministradorCTRL.ver_admi_admin();
        }

        [WebMethod]
        public int InsertarAdministrador(AdministradorBO obj)
        {
            AdministradorBO oAdministrador = obj;
            oAdministradorCTRL = new Services.CtrlAdministrador();
            return oAdministradorCTRL.InsertarAdministrador(oAdministrador);
        }
        [WebMethod]
        public int ModificarAdministrador(AdministradorBO obj)
        {
            AdministradorBO oAdministrador = obj;
            oAdministradorCTRL = new Services.CtrlAdministrador();
            return oAdministradorCTRL.ModificarAdministrador(oAdministrador);
        }
        [WebMethod]
        public int EliminarAdministrador(AdministradorBO obj)
        {
            AdministradorBO oAdministrador = obj;
            oAdministradorCTRL = new Services.CtrlAdministrador();
            return oAdministradorCTRL.EliminarAdministrador(oAdministrador);
        }
        #endregion

        //------------- ABC Comentarios -----------------------
        #region "Gestión de Comentarios"
        [WebMethod]
        public int InsertarComentarios(ComentariosBO obj)
        {
            ComentariosBO oComentarios = obj;
            oComentariosCTRL = new Services.CtrlComentario();
            return oComentariosCTRL.InsertarComentarios(oComentarios);
        }
        [WebMethod]
        public int ModificarComentarios(ComentariosBO obj)
        {
            ComentariosBO oComentarios = obj;
            oComentariosCTRL = new Services.CtrlComentario();
            return oComentariosCTRL.ModificarComentarios(oComentarios);
        }
        [WebMethod]
        public int EliminarComentarios(ComentariosBO obj)
        {
            ComentariosBO oComentarios = obj;
            oComentariosCTRL = new Services.CtrlComentario();
            return oComentariosCTRL.EliminarComentarios(oComentarios);
        }
        #endregion
        //------------- ABC Suscripción -----------------------
        #region "Gestión de suscripción"
        [WebMethod]
        public int InsertarSuscripcion(SuscripcionBO obj)
        {
            SuscripcionBO oSuscripcion = obj;
            oSuscripcionCTRL = new Services.CtrlSuscripcion();
            return oSuscripcionCTRL.InsertarSuscripcion(oSuscripcion);
        }
        [WebMethod]
        public int ModificarSuscripcion(SuscripcionBO obj)
        {
            SuscripcionBO oSuscripcion = obj;
            oSuscripcionCTRL = new Services.CtrlSuscripcion();
            return oSuscripcionCTRL.ModificarSuscripcion(oSuscripcion);
        }
        [WebMethod]
        public int EliminarSuscripcion(SuscripcionBO obj)
        {
            SuscripcionBO oSuscripcion = obj;
            oSuscripcionCTRL = new Services.CtrlSuscripcion();
            return oSuscripcionCTRL.EliminarSuscripcion(oSuscripcion);
        }
        #endregion


        //-----------------Pruebas de web_móvil letra de asignación
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void Wver_servicios_movil()
        {
             
            oServicioCTRL = new Services.CtrlServicio();
            //Creamos un dataset para poder resivirlo de las clases
            DataSet DSmvil = new DataSet();
            //Asignamos la consulta directa de la base de datos.
  
            DSmvil = oServicioCTRL.top12Servicios();
            //Creamos un DataTable para poder transportarlo a Json.
            DataTable Tabla = DSmvil.Tables[0];

            //Creamos un string para poder asignarle la salida en formato Json.
            string SalidaJson = string.Empty;
            SalidaJson = JsonConvert.SerializeObject(Tabla);

            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJson);
            Context.Response.End();
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void Wver_servicios_movil2(string Nombre)
        {

            oServicioCTRL = new Services.CtrlServicio();
            //Creamos un dataset para poder resivirlo de las clases
            DataSet DSmvil = new DataSet();
            //Asignamos la consulta directa de la base de datos.

            DSmvil = oServicioCTRL.top12Servicios();
            //Creamos un DataTable para poder transportarlo a Json.
            DataTable Tabla = DSmvil.Tables[0];

            //Creamos un string para poder asignarle la salida en formato Json.
            string SalidaJson = string.Empty;
            SalidaJson = JsonConvert.SerializeObject(Tabla);

            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJson);
            Context.Response.End();
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]

        public void WtipoServicioWS_movil()
        {
            oTipoServicioCTRL = new Services.CtrlTipoServicio();
            
            DataSet DSmvil = new DataSet();
            //Asignamos la consulta directa de la base de datos.

            DSmvil = oTipoServicioCTRL.topTipoServicios();
            //Creamos un DataTable para poder transportarlo a Json.
            DataTable Tabla = DSmvil.Tables[0];

            //Creamos un string para poder asignarle la salida en formato Json.
            string SalidaJson = string.Empty;
            SalidaJson = JsonConvert.SerializeObject(Tabla);

            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJson);
            Context.Response.End();



        }


       

        //Recuperara imagenes Servicios.
        [WebMethod]
        public byte[] WverFotoSer_movil(int Ser)
        {
            oServicioCTRL = new Services.CtrlServicio();
            //return oServicioCTRL.verfoto(Ser);
            byte[] foto = oServicioCTRL.verfoto(Ser);
            ImageConverter ic = new  ImageConverter();
            Image img = (Image)ic.ConvertFrom(foto);
                //creamos un bitmap con el nuevo tamaño
            Bitmap vBitmap = new Bitmap(150, 150);
            //creamos un graphics tomando como base el nuevo Bitmap
            using (Graphics vGraphics = Graphics.FromImage((Image)vBitmap))
            {
                //especificamos el tipo de transformación, se escoge esta para no perder calidad.
                //Se dibuja la nueva imagen
                vGraphics.DrawImage(img, 0, 0, 150, 150);

            } //retornamos la nueva imagen
            Image ImagenRS  =(Image)vBitmap;
            ImageConverter _imageConverter = new ImageConverter();
            byte[] xByte = (byte[])_imageConverter.ConvertTo(ImagenRS, typeof(byte[]));
            return xByte;
         }



    }
}
