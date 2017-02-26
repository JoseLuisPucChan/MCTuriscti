<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="MCTuristic_Centro_Historico.GUI.InicioSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
 
    <link href="../Recursos/Login/css/style.css" rel="stylesheet" />
    <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    <noscript><link href="../Recursos/css/assets/css/noscript.css" rel="stylesheet" /></noscript>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,700' rel='stylesheet' type='text/css'/>

<div class="container">
  <div class="profile">
    <button class="profile__avatar" id="toggleProfile">
     <img src="https://pbs.twimg.com/profile_images/554631714970955776/uzPxPPtr.jpeg" alt="Avatar" /> 
    </button>
    <div class="profile__form">
      <div class="profile__fields">
        <div class="field">
        <asp:TextBox ID="txtEmail" runat="server" class="input" required pattern=.*\S.*></asp:TextBox>
          <label for="fieldUser" class="label">Email</label>
        </div>
        <div class="field">
            <asp:TextBox   type="password"  ID="txtContraseña" runat="server" class="input" required pattern=.*\S.*></asp:TextBox>
          <label for="fieldPassword" class="label">Contraseña</label>
        </div>
        <div class="profile__footer">
            <asp:Button class="btn" ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
            <a class="btn"  href="PagPrincipal.aspx">Inicio</a>  
        </div>
          
      </div>
     </div>
  </div>
</div>
         <div class="fixed-action-btn" style="bottom: 45px; right: 24px;">  
             <a class="btn" href="PagPrincipal.aspx">Inicio</a>  
          </div>
    
     <script src="../Recursos/Login/js/index.js"></script>
         <script src="../Recursos/css/assets/js/materialize.js"></script>
            <script src="../Recursos/css/assets/js/materialize.min.js"></script>
    </div>
    </form>
</body>
</html>
