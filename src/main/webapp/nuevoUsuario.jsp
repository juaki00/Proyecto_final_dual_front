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
            <form action="./nuevo_usuario" method="POST">
                <p><h3>Regístrate</h3></p><br>
                <div class="mb-3 row">
                    <label class="col-sm-2 col-form-label" for="cus_nick">Usuario</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="cus_nick" type="text"
                               name="nick" required="" placeholder="Nombre de usuario" aria-label="Name">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label class="col-sm-2 col-form-label" for="cus_pass">Contraseña</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="cus_pass" type="password"
                               name="passwd" required="" placeholder="Contraseña" aria-label="Email">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label class="col-sm-2 col-form-label" for="cus_name">Nombre</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="cus_name" type="text"
                               name="nombre" required="" placeholder="Nombre" aria-label="Name">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label class="col-sm-2 col-form-label" for="cus_apellido">Apellido</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="cus_apellido" type="text"
                               name="apellido" required="" placeholder="Apellido" aria-label="Email">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label class="col-sm-2 col-form-label" for="cus_tel">Telefono</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="cus_tel" type="tel"
                               name="telefono" required="" placeholder="Telefono" aria-label="Email">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label class="col-sm-2 col-form-label" for="cus_email">Correo electrónico</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="cus_email" type="text"
                               name="email" required="" placeholder="Correo Electrónico" aria-label="Email">
                    </div>
                </div>
                <div>
                    <button class="px-4 py-1 text-black-dark font-light tracking-wider bg-gray-900 rounded" type="submit">Regístrate</button>

                    <a href="login.jsp"> Ya tengo cuenta</a>
                </div>
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
