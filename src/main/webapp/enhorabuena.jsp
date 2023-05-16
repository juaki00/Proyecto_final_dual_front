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

                <%if(request.getAttribute("enhorabuena")!=null){%>
                <p><%=request.getAttribute("enhorabuena")%></p>
                <%}%>
                <!-- Formulario -->
                <form action="./index.jsp" method="POST">
                    <div>
                        <button class="px-4 py-1 text-black-dark font-light tracking-wider bg-gray-900 rounded" type="submit">Volver a la pagina de inicio</button>
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




