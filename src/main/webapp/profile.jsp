<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navBar.jsp"%>

  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="page-content">
          <%Usuario u = (Usuario) request.getSession().getAttribute("usuarioSesion");%>
          <!-- ***** Banner Start ***** -->
          <div class="row">
            <div class="col-lg-12">
              <div class="main-profile ">
                <div class="row">
                  <div class="col-lg-4">
                    <img src="assets/images/profilepic.png" alt="" style="border-radius: 23px;">
                  </div>
                  <div class="col-lg-4 align-self-center">
                    <div class="main-info header-text">
                      <span>Online</span>
                      <h4><%=u.getNombre() + " " + u.getApellido()%></h4>
                      <div class="main-border-button">
                        <a href="juegos.jsp">Empieza a jugar</a>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4 align-self-center">
                    <ul>
                      <li>Nombre<span><%=u.getNombre() + " " + u.getApellido()%></span></li>
                      <li>Nick<span><%=u.getNick()%></span></li>
                      <li>Puntos<span><%=u.getPuntos()%></span></li>
                      <li>Email<span><%=u.getEmail()%></span></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          <!-- ***** Banner End ***** -->
        </div>
      </div>
    </div>
  </div>
  </div>
  
  <%@include file="footer.jsp"%>


  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/popup.js"></script>
  <script src="assets/js/custom.js"></script>


  </body>

</html>
