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

            <!-- Formulario -->
            <form action="./servlet-login" method="POST">
                <p>Iniciar sesion</p>
                <div class="mb-3 row">
                    <label for="nombre" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                        <input type="text" name="usuario" class="form-control" id="nombre">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" name="contrasena" class="form-control" id="inputPassword">
                    </div>
                </div>
                <div>
                    <button class="px-4 py-1 text-black-dark font-light tracking-wider bg-gray-900 rounded" type="submit">Iniciar sesion</button>
                </div>
                <a href="nuevoUsuario.jsp">
                    Registrate
                </a>
            </form>
            <!-- Fin Formulario -->

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
