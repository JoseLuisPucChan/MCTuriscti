﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="TerminosYcondiciones.aspx.cs" Inherits="MCTuristic_Centro_Historico.GUI.TerminosYcondiciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Principal" runat="server">
    <header id="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <logo><a href="PagPrincipal.aspx">
                            <strong class="logo-home"> MCTuristic</strong></a>
                        </logo>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="home-menu">
                        <div class="navbar mm">
                            <div>
                                <nav class="navbar navbar-default" role="navigation">

                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                                    </div>
                                    <div id="navbar-collapse-1" class="collapse navbar-collapse pull-right">
                                        <ul class="nav navbar-nav">
                                            <li><a href="PagPrincipal.aspx">Inicio</a></li>
                                            <li class="dropdown">
                                                <a href="QuieneSomo.aspx" data-toggle="dropdown" class="dropdown-toggle">Servicios<b class="caret"></b></a>
                                                <ul class="dropdown-menu">
                                                    <li>

                                                        <div class="mm-content">
                                                            <div class="row">
                                                                <ul class="col-sm-4 list-unstyled">
                                                                    <li>
                                                                        <p><strong>Empresa</strong></p>
                                                                    </li>
                                                                    <li><a href="QuieneSomo.aspx">Misión</a></li>
                                                                    <li><a href="QuieneSomo.aspx">Visión</a></li>
                                                                    <li><a href="QuieneSomo.aspx">Valores </a></li>
                                                                    <li><a href="QuieneSomo.aspx">¿Quiénes somos?</a></li>

                                                                </ul>
                                                                <%--<ul class="col-sm-4 list-unstyled">
                                                                        <li>
                                                                            <p><strong>Section Title</strong></p>
                                                                        </li>
                                                                        <li><a href="#">Body Massage</a></li>
                                                                        <li><a href="#">Spa Treatments</a></li>
                                                                        <li><a href="#">Body Massage</a></li>
                                                                        <li><a href="#">Special Facial</a></li>
                                                                        <li><a href="#">Manicure</a></li>
                                                                        <li><a href="#">Pedicure</a></li>
                                                                    </ul>
                                                                    <ul class="col-sm-4 list-unstyled">
                                                                        <li>
                                                                            <p><strong>Section Title</strong></p>
                                                                        </li>
                                                                        <li><a href="#">Body Massage</a></li>
                                                                        <li><a href="#">Spa Treatments</a></li>
                                                                        <li><a href="#">Body Massage</a></li>
                                                                        <li><a href="#">Special Facial</a></li>
                                                                        <li><a href="#">Manicure</a></li>
                                                                        <li><a href="#">Pedicure</a></li>
                                                                    </ul>--%>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li>

                                            <li class="dropdown">

                                                <asp:HyperLink ID="HyperLink1" data-toggle="dropdown" class="dropdown-toggle" Visible="false" NavigateUrl="~/GUI/Principal.aspx" runat="server">Blog</asp:HyperLink>
                                                <%--                                                    <a href="Principal.aspx"  data-toggle="dropdown" class="dropdown-toggle"> Blog<b class="caret"></b></a>--%>
                                                   -
                                                <ul role="menu" class="dropdown-menu">
                                                    <li><a tabindex="-1" href="Principal.aspx">Página principal </a></li>
                                                    <li>
                                                       <%-- <asp:Button TabIndex="-1" ID="btnCerrarSecion" runat="server" Text=" Cerrar sesión" OnClick="btnCerrarSecion_Click1" />--%>
                                                    </li>
                                                </ul>
                                            </li>


                                            <li class="dropdown">
                                                <a href="Productos.aspx" data-toggle="dropdown" class="dropdown-toggle">Productos<b class="caret"></b></a>
                                                <ul role="menu" class="dropdown-menu">
                                                    <li><a tabindex="-1" href="VistaProducto.aspx">Lista Productos </a></li>
                                                    <%-- <li><a tabindex="-1" href="product-details.html"> Product Details</a></li>
                                                        <li><a tabindex="-1" href="cart.html"> Cart </a></li>
                                                        <li><a tabindex="-1" href="checkout.html"> Check Out</a></li>
                                                        <li><a tabindex="-1" href="register.html"> Login</a></li>
                                                        <li><a tabindex="-1" href="register.html"> Register</a></li>--%>
                                                </ul>
                                            </li>


                                            <%-- <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">Gallery<b class="caret"></b></a>
                                                    <ul role="menu" class="dropdown-menu">
                                                        <li><a tabindex="-1" href="galletry01.html"> Double Column </a></li>
                                                        <li><a tabindex="-1" href="galletry02.html"> Three Column</a></li>
                                                        <li><a tabindex="-1" href="galletry03.html"> Four Column</a></li>
                                                        <li><a tabindex="-1" href="galletry04.html"> Masonry Style</a></li>
                                                    </ul>
                                                </li>--%>


                                            <li>
                                                <a href="Contactanos.aspx">Contactanos<b></b></a>
                                            </li>

                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contenido" runat="server">


    

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scrip" runat="server">
</asp:Content>
