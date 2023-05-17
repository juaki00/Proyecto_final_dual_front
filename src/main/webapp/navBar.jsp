<%@ page import="edu.fpdual.client.dto.Usuario" %>
<!-- ***** Preloader Start ***** -->
<div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
</div>
<!-- ***** Preloader End ***** -->

<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="/front/index.jsp" class="logo">
                        <img src="assets/images/logo.png" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="/front/index.jsp" class="active">Home</a></li>
                        <li><a href="/front/juegos.jsp">Nuestros juegos</a></li>
                        <li><a href="/front/ranking.jsp">Ranking</a></li>
                        <li><a href="/front/contacto.jsp">Contacto</a></li>
                        <%if(request.getSession().getAttribute("usuarioSesion")!=null){%>
                            <%Usuario u = (Usuario) request.getSession().getAttribute("usuarioSesion");%>
                        <li><a><%="Puntos: " + u.getPuntos()%></a></li>

                            <li><a href="/front/profile.jsp"><p><%=u.getNick()%></p></a></li>
                        <%} else {%>
                            <li><a href="/front/login.jsp"><p>Iniciar sesion</p>
                        <%}%>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>