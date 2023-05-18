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
          <form action="./servlet-email" method="POST">
            <p><h3>Contacta con nosotros</h3></p><br>
            <div class="mb-3 row">
              <label for="motivo" class="col-sm-2 col-form-label">Motivo de tu consulta</label>
              <div class="col-sm-10">
                <input type="text" name="motivo" class="form-control" id="motivo">
              </div>
            </div>
            <div class="mb-3 row">
              <label for="contenido" class="col-sm-2 col-form-label">Su consulta:</label>
              <div class="col-sm-10">
                <textarea name="contenido" class="form-control" id="contenido" placeholder="Escriba aquí su consulta"></textarea>
              </div>
            </div>
            <div>
              <button class="px-4 py-1 text-black-dark font-light tracking-wider bg-gray-900 rounded" type="submit">Enviar consulta</button>
            </div>
          </form>
          <!-- Fin Formulario -->
          <%if(request.getSession().getAttribute("enviado")!=null){ %>
          <p><%= (String) request.getSession().getAttribute("enviado")%></p>
          <% request.setAttribute("enviado",null);
          }%>
          <%if(request.getSession().getAttribute("error")!=null){ %>
          <p><%= (String) request.getSession().getAttribute("error")%></p>
          <% request.setAttribute("error",null);
          }%>

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
