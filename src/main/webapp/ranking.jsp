<%@ page import="java.util.Set" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.fpdual.client.dto.RankinUsuarios" %>
<%@ page import="edu.fpdual.client.services.UserServices" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="head.jsp" %>
</head>

<body>
<%@include file="navBar.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="page-content">

                <!-- ***** Featured Games Start ***** -->
                <div class="row">
                    <div class="featured-games header-text">
                        <!-- ***** Other Start ***** -->
                        <div class="other-games">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="heading-section">
                                        <h4><em>Top</em> Ranking</h4>
                                    </div>
                                </div>
                                <%
                                    Set<Usuario> setUsuarios = new UserServices().getAllUsers();
                                    List<Usuario> listaUsuarios = new ArrayList<>(setUsuarios.stream().toList());
                                    RankinUsuarios rankin = new RankinUsuarios();
                                    listaUsuarios.sort(rankin);
                                    for (int posicion = 0; posicion<listaUsuarios.size();posicion++) {
                                %>
                                <div class="col-lg-6">
                                    <div class="item">
                                        <img src="assets/images/game-01.jpg" alt="" class="templatemo-item">
                                        <h4><%="#"+(posicion+1)+" "+listaUsuarios.get(posicion).getNick()%></h4><span><%=listaUsuarios.get(posicion).getPuntos()%></span>
                                    </div>

                                </div>
                                <%if(posicion == 5){
                                    posicion = listaUsuarios.size();
                                }
                                    }%>
                            </div>
                        </div>
                        <!-- ***** Other End ***** -->

                    </div>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>


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
