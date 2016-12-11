<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="QuieneSomo.aspx.cs" Inherits="MCTuristic_Centro_Historico.GUI.QuieneSomo" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Principal" runat="server">
    <div class="wrapper inner">

        <header id="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <logo class="logo"><a href="PagPrincipal.aspx" ><img src="../Recursos/images/inner-logo.png" alt="Logo" title="Relax Spa Palace"/></a></logo>
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
                                                                    <%-- <ul class="col-sm-4 list-unstyled">
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
                                                            <asp:Button TabIndex="-1" ID="btnCerrarSecion" runat="server" Text=" Cerrar sesión" />
                                                        </li>
                                                    </ul>
                                                </li>


                                                <li class="dropdown">
                                                    <a href="VistaProducto.aspx" data-toggle="dropdown" class="dropdown-toggle">Productos<b class="caret"></b></a>
                                                    <ul role="menu" class="dropdown-menu">
                                                        <li><a tabindex="-1" href="VistaProducto.aspx">Lista Productos </a></li>
                                                        <%--      <li><a tabindex="-1" href="DetalleProducto.aspx"> Product Details</a></li>
                                                        <li><a tabindex="-1" href="cart.html"> Cart </a></li>
                                                        <li><a tabindex="-1" href="checkout.html"> Check Out</a></li>
                                                        <li><a tabindex="-1" href="register.html"> Login</a></li>
                                                        <li><a tabindex="-1" href="register.html"> Register</a></li>--%>
                                                    </ul>
                                                </li>


                                                <%-- <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle">Gallery<b class="caret"></b></a>
                                                    <ul role="menu" class="dropdown-menu">
                                                        <li><a tabindex="-1" href="galletry01.html">Double Column </a></li>
                                                        <li><a tabindex="-1" href="galletry02.html">Three Column</a></li>
                                                        <li><a tabindex="-1" href="galletry03.html">Four Column</a></li>
                                                        <li><a tabindex="-1" href="galletry04.html">Masonry Style</a></li>
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
        <div class="gap"></div>





        <section class="about about2">
<div class="container">
 
<div class="row">
<div class="col-lg-6 col-md-6">
<ul class="about-slider">
 
<li>   <img src="../Recursos/Imagenes/slider01.jpeg" /></li>
<li>   <img src="../Recursos/Imagenes/slider02.jpg" /></li>
<li>   <img src="../Recursos/Imagenes/slider03.jpg" /></li>
</ul></div>
<div class="col-lg-6 col-md-6 about-2">
<h2>Our Story</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque arcu orci, tempus at placerat id, elementum ac turpis. Nullam eu lacus in dui blandit lobortis. Fusce iaculis lacinia metus id varius. Sed tristique in urna nec ullamcorper. Integer egestas accumsan elit, non pulvinar lorem pulvinar vitae. Suspendisse sed enim cursus, aliquam ante ac, vulputate sem. Proin mattis elit consequat leo eleifend, sit amet ornare elit suscipit. Nam porta congue ante a molestie. Morbi ut condimentum dui. Nullam fringilla vel nisl et sollicitudin. Lorem ipsum dolor sit amet.</p>
<p>
Consectetur adipiscing elit. Pellentesque arcu orci, tempus at placerat id, elementum ac turpis. Nullam eu lacus in dui blandit lobortis. Integer egestas accumsan elit, non pulvinar lorem pulvinar vitae. Fusce iaculis lacinia metus id varius. Sed tristique in urna nec ullamcorper. Integer egestas accumsan elit, non pulvinar lorem pulvinar vitae. Suspendisse sed enim cursus, aliquam ante ac, vulputate sem. Proin mattis elit consequat leo eleifend, sit amet ornare elit suscipit. Nam porta congue ante a molestie. </p></div>
</div>
 
<div class="gap-30"></div>
 
<div class="row">
<div class="col-lg-12 col-md-12 full-tabs">
 
<ul class="nav nav-tabs">
<li><a href="#tab1" data-toggle="tab">History</a></li>
<li><a href="#tab2" data-toggle="tab">Misión</a></li>
<li><a href="#tab3" data-toggle="tab">Visión</a></li>
<li><a href="#tab4" data-toggle="tab"></a></li>
</ul>
 
<div class="tab-content">
<div class="tab-pane active" id="tab1">
<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque arcu orci, tempus at placerat id, elementum ac turpis. Nullam eu lacus in dui blandit lobortis. Fusce iaculis lacinia metus id varius. Sed tristique in urna nec ullamcorper. Integer egestas accumsan elit, non pulvinar lorem pulvinar vitae. Suspendisse sed enim cursus, aliquam ante ac, vulputate sem. Proin mattis elit consequat leo eleifend.</p>
<ul class="flist">
<li> Nostrud exercitation ullamco laboris.</li>
<li> Sed malesuada libero id mattis ultrices. </li>
<li> Duis pretium pharetra lacus quis interdum. </li>
<li> Quisque viverra neque non lobortis commodo. </li>
</ul>
</div>
<div class="tab-pane" id="tab2">
<h5>                                     Nuestra Misión, es representar y promover las riquezas Naturales y culturales que ofrece el estado de Yucatán, Mérida es el mejor punto de partida, pues está perfectamente conectada con la costa y sus Pueblos Mágicos, así como con sus muchas zonas arqueológicas que cuentan una historia, contribuyendo a la conservación del patrimonio natural y cultural del país e integrando a las comunidades locales al desarrollo de las actividades para los turistas.
</h5>

</div>
<div class="tab-pane" id="tab3">
<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque arcu orci, tempus at placerat id, elementum ac turpis. Nullam eu lacus in dui blandit lobortis. Fusce iaculis lacinia metus id varius. Sed tristique in urna nec ullamcorper. Integer egestas accumsan elit, non pulvinar lorem pulvinar vitae. Suspendisse sed enim cursus, aliquam ante ac, vulputate sem. Proin mattis elit consequat leo eleifend.</p>
<ul class="flist">
<li> Nostrud exercitation ullamco laboris.</li>
<li> Sed malesuada libero id mattis ultrices. </li>
<li> Duis pretium pharetra lacus quis interdum. </li>
<li> Quisque viverra neque non lobortis commodo. </li>
</ul>
</div>
<div class="tab-pane" id="tab4">
<p> Pellentesque arcu orci, tempus at placerat id, elementum ac turpis. Nullam eu lacus in dui blandit lobortis. Fusce iaculis lacinia metus id varius. Sed tristique in urna nec ullamcorper. Integer egestas accumsan elit, non pulvinar lorem pulvinar vitae. Pellentesque arcu orci, tempus at placerat id, elementum ac turpis. Nullam eu lacus in dui blandit lobortis. Fusce iaculis lacinia metus id varius. Sed tristique in urna nec ullamcorper. Integer egestas accumsan elit, non pulvinar lorem pulvinar vitae. </p>
<ul class="flist">
<li> Nostrud exercitation ullamco laboris.</li>
<li> Sed malesuada libero id mattis ultrices. </li>
<li> Duis pretium pharetra lacus quis interdum. </li>
<li> Quisque viverra neque non lobortis commodo. </li>
</ul>
</div>
</div>
</div>
</div>
 
<div class="gap-30"></div>
<div class="prograss-round">
<div class="row">
<div class="col-lg-12 col-md-12">
<h2 class="main-title">Our Skills</h2>
<h4 class="sub-title">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</h4>
</div>
</div>
<div class="row">
<div class="col-lg-3 col-md-3 col-sm-6 cp_load fadeInUp">
<div id="prog1" data-dimension="300" data-text="75%" data-info="Massage" data-width="20" data-fontsize="70" data-percent="75" data-fgcolor="#58b1c3" data-bgcolor="#fff" data-fill="#e1e1e1">
</div>
</div>
<div class="col-lg-3 col-md-3 col-sm-6 cp_load fadeInUp">
<div id="prog2" data-dimension="300" data-text="84%" data-info="Facial" data-width="20" data-fontsize="70" data-percent="84" data-fgcolor="#58b1c3" data-bgcolor="#fff" data-fill="#e1e1e1"></div>
</div>
<div class="col-lg-3 col-md-3 col-sm-6 cp_load fadeInUp">
<div id="prog3" data-dimension="300" data-text="66%" data-info="Waxing" data-width="20" data-fontsize="70" data-percent="66" data-fgcolor="#58b1c3" data-bgcolor="#fff" data-fill="#e1e1e1"></div>
</div>
<div class="col-lg-3 col-md-3 col-sm-6 cp_load fadeInUp">
<div id="prog4" data-dimension="300" data-text="93%" data-info="Therapy" data-width="20" data-fontsize="70" data-percent="93" data-fgcolor="#58b1c3" data-bgcolor="#fff" data-fill="#e1e1e1"></div>
</div>
</div>
</div>
 
 
<div class="gap-30"></div>
<div class="row">
<div class="col-lg-12 col-md-12">
<h2 class="main-title">Meet Our Experts</h2>
<h4 class="sub-title">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</h4>
</div>
</div>
<div class="row team2 gallery">
<div class="col-sm-3 cp_load fadeInUp">
<ul>
<li>
<div class="block-image">
<img class="img-responsive" src="images/team-img4.png" alt="">
<div class="imgb-overlay pat-override"></div>
<ol class="static-style">
<li class="white-rounded"><a href="images/large/large1.gif" rel="prettyPhoto[gallery1]"><i class="fa fa-plus"></i></a></li>
</ol>
</div>
</li>
<li>
<h3><a href="#">Mendas</a></h3>
<span>Massage Expert</span>
<p>Lorem ipsum dolor sit amet adipiscing elit arcu orci, tempus at placerat id elementum ac turpis.</p>
</li>
<li>
<div class="tsocial">
<ul>
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
<li><a href="#"><i class="fa fa-youtube"></i></a></li>
</ul>
</div>
</li>
</ul>
</div>
<div class="col-sm-3 cp_load fadeInUp">
<ul>
<div class="block-image">
<img class="img-responsive" src="images/team-img2.html" alt="">
<div class="imgb-overlay pat-override"></div>
<ol class="static-style">
<li class="white-rounded"><a href="images/large/large1.gif" rel="prettyPhoto[gallery1]"><i class="fa fa-plus"></i></a></li>
</ol>
</div>
</li>
<li>
<h3><a href="#">Anderson</a></h3>
<span>Client Coordinator</span>
<p>Lorem ipsum dolor sit amet adipiscing elit arcu orci, tempus at placerat id elementum ac turpis.</p>
</li>
<li>
<div class="tsocial cp_load fadeInUp">
<ul>
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
<li><a href="#"><i class="fa fa-youtube"></i></a></li>
</ul>
</div>
</li>
</ul>
</div>
<div class="col-sm-3 cp_load fadeInUp">
<ul>
<div class="block-image">
<img class="img-responsive" src="images/team-img3.png" alt="">
<div class="imgb-overlay pat-override"></div>
<ol class="static-style">
<li class="white-rounded"><a href="images/large/large1.gif" rel="prettyPhoto[gallery1]"><i class="fa fa-plus"></i></a></li>
</ol>
</div>
</li>
<li>
<h3><a href="#">Lisa Sen</a></h3>
<span>Senior Consultant</span>
<p>Lorem ipsum dolor sit amet adipiscing elit arcu orci, tempus at placerat id elementum ac turpis.</p>
</li>
<li>
<div class="tsocial">
<ul>
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
<li><a href="#"><i class="fa fa-youtube"></i></a></li>
</ul>
</div>
</li>
</ul>
</div>
<div class="col-sm-3 cp_load fadeInUp">
<ul>
<div class="block-image">
<img class="img-responsive" src="images/team-img1.png" alt="">
<div class="imgb-overlay pat-override"></div>
<ol class="static-style">
<li class="white-rounded"><a href="images/large/large1.gif" rel="prettyPhoto[gallery1]"><i class="fa fa-plus"></i></a></li>
</ol>
</div>
</li>
<li>
<h3><a href="#">Josa</a></h3>
<span>Facial Specialist</span>
<p>Lorem ipsum dolor sit amet adipiscing elit arcu orci, tempus at placerat id elementum ac turpis.</p>
</li>
<li>
<div class="tsocial">
<ul>
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
<li><a href="#"><i class="fa fa-youtube"></i></a></li>
</ul>
</div>
</li>
</ul>
</div>
</div>
<div class="gap"></div>
 
<div class="row">
<div class="col-lg-12 col-md-12">
<div class="partner-logos">
<ul class="logo-slider">
<li><img src="images/pl-01.png"/></li>
<li><img src="images/pl-02.png"/></li>
<li><img src="images/pl-03.png"/></li>
<li><img src="images/pl-04.png"/></li>
<li><img src="images/pl-05.png"/></li>
<li><img src="images/pl-06.png"/></li>
<li><img src="images/pl-01.png"/></li>
<li><img src="images/pl-02.png"/></li>
</ul>
</div>
</div>
</div>
 
</div>
</section>









        <section class="blog bdetails">
            <div class="container">
                <div class="row">

                    <div class="col-lg-9 col-md-9">

                        <section class="blog-post">

                            <div class="row">
                                <div class="col-md-1"></div>
                                <div class="col-md-11 post-title-tags">
                                    <h2>MCTuristic </h2>

                                </div>
                            </div>


                            <div class="row post-title-tags">
                                <div class="col-md-1 col-sm-1">
                                    <div class="date"><strong>24</strong>Dec</div>
                                    <div class="like"><i class="fa fa-heart"></i>19</div>
                                </div>
                                <div class="col-md-11 col-sm-11">
                                    <p>
   
                                    </p>
                                </div>
                            </div>

                        </section>
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-11 post-title-tags">
                                <h2>Visión</h2>

                            </div>
                        </div>


                        <section class="blog-quote">
                            <div class="quote">

                                <p>
                                    El Turismo es un sector productivo de primer orden, que contribuye al desarrollo social y económico de Yucatán, mediante la generación de actividades. 
Nuestra visión general, es posicionar al sector de turismo de historia como un segmento consolidado y reconocido dentro de las actividades turísticas del país. 
                                </p>
                            </div>
                        </section>

                        <div class="gap-30"></div>
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-11 post-title-tags">
                                <h2> </h2>

                            </div>
                        </div>

                        <section class="blog-bottom-text">

                            <h5>valoramos a las personas y a nuestros turistas en México , tenemos prioridad en el cuidado de los derechos de los empleados, sus familias, buscamos los mejores beneficios de los clientes y aseguramos el valor del de la cultura en nuestro México, estructurando Actividades que no produzcan ninguna clase de incomodidad a las personas, buscamos principalmente una conciencia ecológica y cultural, usando la tecnología para el beneficio de la sociedad.
                            </h5>
                        </section>


                        <div class="blog-share">
                            <div class="title"><strong>Share Post</strong></div>
                            <div class="social"><a href="#" title="Facebook"><i class="fa fa-facebook-square"></i></a><a href="#" title="Linkedin"><i class="fa fa-linkedin-square"></i></a><a href="#" title="Gplus"><i class="fa fa-google-plus-square"></i></a><a href="#" title="Twitter"><i class="fa fa-twitter-square"></i></a><a href="#" title="Pinterest"><i class="fa fa-pinterest-square"></i></a><a href="#" title="Instagram"><i class="fa fa-instagram"></i></a><a href="#" title="Flickr"><i class="fa fa-flickr"></i></a></div>
                        </div>


                        <div class="blog-comments">
                            <div>
                                <h2>22 Comentario</h2>
                                <ul class="comments-list">
                                    <li>
                                        <div class="auther-img">
                                            <img src="../Recursos/images/buser1.jpg" alt="user" />
                                        </div>

                                        <div class="auther-details">
                                            <strong>Lisa Jackson</strong>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi cursus, neque nec vestibulum commodo, nunc orci adipiscing augue, ac convallis enim libero non nunc. Vestibulum vitae mi sit amet lacus aliquet dictum at in arcu. Curabitur sem lacus, elementum in suscipit nec, venenatis porttitor ligula. Suspendisse potenti. Sed venenatis nec nisl sit amet gravida.</p>
                                            <strong class="comm-title"><span class="cdate">15 Jan, 2014</span> <span class="comm-sp">//</span> <span class="replay"><a href="#">Reply</a></span></strong>
                                        </div>
                                        <ul>
                                            <li>
                                                <div class="auther-img">
                                                    <img src="../Recursos/images/buser2.jpg" alt="user" />
                                                </div>
                                                <div class="auther-details">
                                                    <strong>Lisa Jackson</strong>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi cursus, neque nec vestibulum commodo, nunc orci adipiscing augue, ac convallis enim libero non nunc. Vestibulum vitae mi sit amet lacus aliquet dictum at in arcu. Curabitur sem lacus, elementum in suscipit nec, venenatis porttitor ligula. Suspendisse potenti. Sed venenatis nec nisl sit amet gravida.</p>
                                                    <strong class="comm-title"><span class="cdate">15 Jan, 2014</span> <span class="comm-sp">//</span> <span class="replay"><a href="#">Reply</a></span></strong>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <div class="auther-img">
                                            <img src="../Recursos/images/buser1.jpg" alt="user" />
                                        </div>
                                        <div class="auther-details">
                                            <strong>Lisa Jackson</strong>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi cursus, neque nec vestibulum commodo, nunc orci adipiscing augue, ac convallis enim libero non nunc. Vestibulum vitae mi sit amet lacus aliquet dictum at in arcu. Curabitur sem lacus, elementum in suscipit nec, venenatis porttitor ligula. Suspendisse potenti. Sed venenatis nec nisl sit amet gravida.</p>
                                            <strong class="comm-title"><span class="cdate">15 Jan, 2014</span> <span class="comm-sp">//</span> <span class="replay"><a href="#">Reply</a></span></strong>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="hr1"></div>
                        </div>


                        <div class="comment-form">
                            <h2>Agrega comentarios</h2>
                            <div class="row">
                                <div class="col-lg-6">
                                    <ul>
                                        <li>
                                            <input name="" type="text" placeholder="Nombre*">
                                        </li>
                                        <li>
                                            <input name="" type="text" placeholder="Email *">
                                        </li>
                                        <li>
                                            <input name="" type="text" placeholder="Número">
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-6">
                                    <ul>
                                        <li>
                                            <textarea name="" cols="" rows="8" placeholder="Comentario"></textarea>
                                        </li>
                                    </ul>
                                    <button class="btn pull-right">Enviar</button>
                                </div>
                            </div>
                        </div>


                    </div>

                    <div class="col-lg-3 col-md-3 sidebar">

                        <div class="search">
                            <form>
                                <input name="" type="text" placeholder="Search for:">
                                <button><i class="fa fa-search"></i></button>
                            </form>
                        </div>


                        <%--<div class="services-list"> <strong class="stitle">Latest Posts</strong>
<ul class="slist">
<li class="simg"><img src="images/twuser-1.jpg"></li>
<li class="spost"> <strong>Lorem Ipsum dolar sit</strong>
<p>Sed tristique in urna nec ullamcorper integer egestas accumsan elit.</p>
</li>
</ul>
<ul class="slist">
<li class="simg"><img src="images/fp4.jpg"></li>
<li class="spost"> <strong>Lorem Ipsum dolar sit</strong>
<p>Sed tristique in urna nec ullamcorper integer egestas accumsan elit.</p>
</li>
</ul>
<ul class="slist">
<li class="simg"><img src="images/twuser-3.jpg"></li>
<li class="spost"> <strong>Lorem Ipsum dolar sit</strong>
<p>Sed tristique in urna nec ullamcorper integer egestas accumsan elit.</p>
</li>
</ul>
<ul class="slist">
<li class="simg"><img src="images/fp7.jpg"></li>
<li class="spost"> <strong>Lorem Ipsum dolar sit</strong>
<p>Sed tristique in urna nec ullamcorper integer egestas accumsan elit.</p>
</li>
</ul>
</div>--%>

                        <div class="gap-25"></div>

                        <%--<div class="ser-cats"> <strong class="stitle2">Categories</strong>
<ul>
<li><a href="#">Full Body Massage</a></li>
<li><a href="#">Waxing</a></li>
<li><a href="#">Manicure</a></li>
<li><a href="#">Pedicure</a></li>
<li><a href="#">Special Therapy</a></li>
<li><a href="#">Full Facial</a></li>
</ul>
</div>--%>


                        <%--<div>
<div class="gap-25"></div>
<strong class="stitle">Flickr Images</strong>
<ul class="lb-album">
<li> <a href="#image-1"> <img src="images/fp1.jpg" alt="image01"> <span><i class="fa fa-search-plus"></i></span> </a>
<div class="lb-overlay" id="image-1"> <img src="images/large/large1.gif" alt="image01">
<div>
<p>Image Tagline Will Come here</p>
</div>
<a href="#page" class="lb-close"><i class="fa fa-times-circle"></i></a> </div>
</li>
<li> <a href="#image-2"> <img src="images/fp2.jpg" alt="image01"> <span><i class="fa fa-search-plus"></i></span> </a>
<div class="lb-overlay" id="image-2"> <img src="images/large/large1.gif" alt="image01">
<div>
<p>Image Tagline Will Come here</p>
</div>
<a href="#page" class="lb-close"><i class="fa fa-times-circle"></i></a> </div>
</li>
<li> <a href="#image-3"> <img src="images/fp3.html" alt="image01"> <span><i class="fa fa-search-plus"></i></span> </a>
<div class="lb-overlay" id="image-3"> <img src="images/large/large1.gif" alt="image01">
<div>
<p>Image Tagline Will Come here</p>
</div>
<a href="#page" class="lb-close"><i class="fa fa-times-circle"></i></a> </div>
</li>
<li> <a href="#image-4"> <img src="images/fp4.jpg" alt="image01"> <span><i class="fa fa-search-plus"></i></span> </a>
<div class="lb-overlay" id="image-4"> <img src="images/large/large1.gif" alt="image01">
<div>
<p>Image Tagline Will Come here</p>
</div>
<a href="#page" class="lb-close"><i class="fa fa-times-circle"></i></a> </div>
</li>
<li> <a href="#image-5"> <img src="images/fp5.jpg" alt="image01"> <span><i class="fa fa-search-plus"></i></span> </a>
<div class="lb-overlay" id="image-5"> <img src="images/large/large1.gif" alt="image01">
<div>
<p>Image Tagline Will Come here</p>
</div>
<a href="#page" class="lb-close"><i class="fa fa-times-circle"></i></a> </div>
</li>
<li> <a href="#image-6"> <img src="images/fp1.jpg" alt="image01"> <span><i class="fa fa-search-plus"></i></span> </a>
<div class="lb-overlay" id="image-6"> <img src="images/large/large1.gif" alt="image01">
<div>
<p>Image Tagline Will Come here</p>
</div>
<a href="#page" class="lb-close"><i class="fa fa-times-circle"></i></a> </div>
</li>
<li> <a href="#image-7"> <img src="images/fp7.jpg" alt="image01"> <span><i class="fa fa-search-plus"></i></span> </a>
<div class="lb-overlay" id="image-7"> <img src="images/large/large1.gif" alt="image01">
<div>
<p>Image Tagline Will Come here</p>
</div>
<a href="#page" class="lb-close"><i class="fa fa-times-circle"></i></a> </div>
</li>
<li> <a href="#image-8"> <img src="images/fp8.jpg" alt="image01"> <span><i class="fa fa-search-plus"></i></span> </a>
<div class="lb-overlay" id="image-8"> <img src="images/large/large1.gif" alt="image01">
<div>
<p>Image Tagline Will Come here</p>
</div>
<a href="#page" class="lb-close"><i class="fa fa-times-circle"></i></a> </div>
</li>
<li> <a href="#image-9"> <img src="images/fp9.jpg" alt="image01"> <span><i class="fa fa-search-plus"></i></span> </a>
<div class="lb-overlay" id="image-9"> <img src="images/large/large1.gif" alt="image01">
<div>
<p>Image Tagline Will Come here</p>
</div>
<a href="#page" class="lb-close"><i class="fa fa-times-circle"></i></a> </div>
</li>
</ul>
</div>--%>

                        <div class="gap-25"></div>

                        <%--<div class="ser-cats"> <strong class="stitle2">Archives</strong>
<ul>
<li>January <span>2014 <i>(04)</i></span> </li>
<li>December<span>2013 <i>(04)</i></span> </li>
<li>November <span>2013 <i>(04)</i></span></li>
<li>October <span>2013 <i>(04)</i></span></li>
<li>September <span>2013 <i>(04)</i></span></li>
<li>August <span>2013 <i>(04)</i></span></li>
</ul>
</div>--%>

                        <div class="gap-25"></div>

                        <div class="facebook-box">
                            <strong class="stitle">Facebook</strong>
                            <iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2FFacebookDevelopers&amp;width&amp;height=258&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=true&amp;appId=133982306765662" scrolling="no" frameborder="0" style="border: none; overflow: hidden; height: 258px;" allowtransparency="true"></iframe>
                        </div>


                        <div class="tags">
                            <strong class="stitle">Tags</strong>
                            <ul>
                                <li><a href="#">Massage</a></li>
                                <li><a href="#">Skin Care</a></li>
                                <li><a href="#">Waxing</a></li>
                                <li><a href="#">Special Therapy</a></li>
                                <li><a href="#">Manicure</a></li>
                                <li><a href="#">Pedicure</a></li>
                                <li><a href="#">Reflexology</a></li>
                            </ul>
                        </div>

                        <%--<div class="gap-25"></div>
 
<div> <img src="images/sidebar-banner.jpg" alt=""> </div>
 
</div>--%>


                        <div class="gap"></div>
                    </div>
                </div>
        </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contenido" runat="server">
</asp:Content>

