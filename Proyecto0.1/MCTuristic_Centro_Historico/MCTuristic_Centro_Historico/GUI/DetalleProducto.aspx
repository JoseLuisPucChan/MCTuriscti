<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="DetalleProducto.aspx.cs" Inherits="MCTuristic_Centro_Historico.GUI.DetalleProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Principal" runat="server">
    <div class="wrapper inner">

        <header id="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <logo class="logo"><a href="index.html"><img src="../Recursos/images/inner-logo.png" alt="Logo" title="Relax Spa Palace"/></a></logo>
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
                                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">Servicios<b class="caret"></b></a>
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
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">BLOG<b class="caret"></b></a>
                                                    <ul role="menu" class="dropdown-menu">
                                                        <li><a tabindex="-1" href="blog-full.html">Full Width </a></li>
                                                        <li><a tabindex="-1" href="blog-masanary.html">Masonry Style </a></li>
                                                        <li><a tabindex="-1" href="blog.html">Single Column (With Sidebar) </a></li>
                                                        <li><a tabindex="-1" href="blog-02-column.html">Double Column</a></li>
                                                        <li><a tabindex="-1" href="blog-03-column.html">Three Column</a></li>
                                                    </ul>
                                                </li>


                                                <li class="dropdown">
                                                    <a href="Productos.aspx" data-toggle="dropdown" class="dropdown-toggle">Productos<b class="caret"></b></a>
                                                    <ul role="menu" class="dropdown-menu">
                                                        <li><a tabindex="-1" href="products.html">Product Listing </a></li>
                                                        <li><a tabindex="-1" href="product-details.html">Product Details</a></li>
                                                        <li><a tabindex="-1" href="cart.html">Cart </a></li>
                                                        <li><a tabindex="-1" href="checkout.html">Check Out</a></li>
                                                        <li><a tabindex="-1" href="register.html">Login</a></li>
                                                        <li><a tabindex="-1" href="register.html">Register</a></li>
                                                    </ul>
                                                </li>


                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">Gallery<b class="caret"></b></a>
                                                    <ul role="menu" class="dropdown-menu">
                                                        <li><a tabindex="-1" href="galletry01.html">Double Column </a></li>
                                                        <li><a tabindex="-1" href="galletry02.html">Three Column</a></li>
                                                        <li><a tabindex="-1" href="galletry03.html">Four Column</a></li>
                                                        <li><a tabindex="-1" href="galletry04.html">Masonry Style</a></li>
                                                    </ul>
                                                </li>


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


        <section class="inner-titlebg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <h1>Detalle Productos</h1>
                    </div>
                    <div class="">
                        <div class="col-lg-9 col-md-9">
                            <h5>There are many variations of passages of Lorem Ipsum available but the majority have suffered alteration in some form.</h5>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <ul class="bcrumb pull-right">
                                <li><a href="PagPrincipal.aspx">Inicio </a></li>
                                &gt;
                                <li><a href="#">Product Details</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="gap"></div>
        <asp:DataList ID="DLDetallProducto" runat="server">
            <ItemTemplate>
                 <section class="pro-details">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="bx-wrapper" style="max-width: 100%;">
                                    <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 500px;">
                                        <ul class="pro-slider" style="width: 715%; position: relative; transition-duration: 0s; transform: translate3d(-720px, 0px, 0px);">
                                            <li style="float: left; list-style: none; position: relative; width: 720px;" class="bx-clone">
                                                <img src="../Recursos/Imagenes/4.jpg" alt="" /></li>
                                            <asp:Image class="img-responsive" width="260" height="180" ID="Image2"  runat="server" 
                                            ImageUrl='<%#"GetImagen.aspx?id=" + Eval("idServicio") %>' alt=""  />
                                        </ul>
                                    </div>
                                    <div class="bx-controls bx-has-controls-direction">
                                        <div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div>
                                    </div>
                                </div>
                             
                            </div>

                            <div class="col-lg-6">
                                <div class="prod-top"><strong class="title">Manicure and Pedicure</strong> <strong class="sub-title">Spa Equipments</strong> <strong class="ptag">Price:</strong> <span class="price">$299.00</span> </div>
                                <div class="prod-details">
                                    <p>Pellentesque arcu orci, tempus at placerat id, elementum ac turpis. Nullam eu lacus in dui blandit lobortis. Fusce iaculis lacinia metus id varius. Sed tristique in urna nec ullamcorper. Integer egestas accumsan elit, non pulvinar lorem pulvinar vitae. Pellentesque arcu orci, tempus at placerat id, elementum ac turpis. Nullam eu lacus in dui blandit lobortis. Fusce iaculis lacinia metus id varius. Sed tristique in urna nec ullamcorper. Pellentesque arcu orci, tempus at placerat id, elementum ac turpis. Nullam eu lacus in dui blandit lobortis. Fusce iaculis lacinia metus id varius. Sed tristique in urna nec ullamcorper. Integer egestas accumsan elit, non pulvinar lorem pulvinar vitae. Integer egestas accumsan elit, non pulvinar lorem pulvinar vitae. </p>
                                    <br>
                                    <ul class="flist">
                                        <li>Nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</li>
                                        <li>Sed malesuada libero id mattis ultrices quisque viverra neque non lobortis commodo. </li>
                                        <li>Duis pretium pharetra lacus quis interdum sed malesuada libero id mattis ultrices. </li>
                                    </ul>
                                </div>
                                <div class="prod-info">
                                    <ul>
                                        <li><strong>Brand:</strong> Relax Spa Palace</li>
                                        <li><strong>Product Code:</strong> 01234</li>
                                        <li><strong>Availability:</strong> In Stock</li>
                                        <li><strong>Category:</strong> Makeup, Spa, Kits,</li>
                                    </ul>
                                </div>
                              
                                <div class="prod-buy">
                                    <ul>
                                        <li>Precio Producto :</li>
                                        <li>
                                            <div class="buttons_added">
                                                <input type="button" class="minus" value="-">
                                                <input type="number" maxlength="12" class="input-text qty text" title="Qty" size="4" value="1" max="" min="" step="1" name="cart[ccb0989662211f61edae2e26d58ea92f][qty]">
                                                <input type="button" class="plus" value="+">
                                            </div>
                                        </li>
                                        <li>
                                            <button class="buyit">Buy IT</button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class=" gap-30"></div>

                    </div>

                </div>
            </div>
        </section>
            </ItemTemplate>
           
        </asp:DataList>
        
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contenido" runat="server">
</asp:Content>
