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

                <!-- ***** Featured Games Start ***** -->
                <div class="row">
                    <div class="col-lg-8">
                        <div class="featured-games header-text">
                            <div class="heading-section">
                                <h4><em>Nuestros</em> juegos</h4>
                            </div>

                            <div class="owl-features owl-carousel">
                                <div class="item">
                                    <div class="thumb">
                                        <a href="juego2/juego2.jsp">
                                            <img alt="" src="assets/images/cross.png"/>
                                        </a>
                                        <div class="hover-effect">
                                            <h6>2.4K Jugadores</h6>
                                        </div>
                                    </div>
                                    <h4>Crucigramas<br><span>2.4K Jugadores</span></h4>
                                    <ul>
                                        <li><i class="fa fa-star"></i> 4.8</li>
                                    </ul>
                                </div>

                                <div class="item">
                                    <div class="thumb">
                                        <a href="juego1/juego1.jsp">
                                            <img alt="" src="assets/images/wordsearch.png"/>
                                        </a>
                                        <div class="hover-effect">
                                            <h6>1.4K Jugadores</h6>
                                        </div>
                                    </div>
                                    <h4>Word Search<br><span>1.4K Jugadores</span></h4>
                                    <ul>
                                        <li><i class="fa fa-star"></i> 4.5</li>
                                    </ul>
                                </div>

                                <div class="item">
                                    <div class="thumb">
                                        <a href="juego3/juego3.jsp">
                                            <img alt="" src="assets/images/guess.png"/>
                                        </a>
                                        <div class="hover-effect">
                                            <h6>1.2K Jugadores</h6>
                                        </div>
                                    </div>
                                    <h4>Guess it!<br><span>1.2K Jugadores</span></h4>
                                    <ul>
                                        <li><i class="fa fa-star"></i> 4.2</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="top-downloaded">
                            <div class="heading-section">
                                <h4><em>Más</em> jugados</h4>
                            </div>
                            <ul>
                                <li>
                                    <img src="assets/images/minicross.png" alt="" class="templatemo-item">
                                    <a href="juego2/juego2.jsp">Crucigramas</a>
                                    <h6>Vocabulario</h6>
                                    <span><i class="fa fa-star" style="color: yellow;"></i> 4.8</span>
                                </li>
                                <li>
                                    <img src="assets/images/minisearch.png" alt="" class="templatemo-item">
                                    <a href="juego1/juego1.jsp">Ahorcado</a>
                                    <h6>Vocabulario</h6>
                                    <span><i class="fa fa-star" style="color: yellow;"></i> 4.5</span>
                                </li>
                                <li>
                                    <img src="assets/images/miniguess.png" alt="" class="templatemo-item">
                                    <a href="juego3/juego3.jsp">Adivina la imagen</a>
                                    <h6>Vocabulario</h6>
                                    <span><i class="fa fa-star" style="color: yellow;"></i> 4.2</span>
                                </li>
                            </ul>
                            <div class="text-button">
                                <a href="ranking.jsp">¡Sé el mejor!</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ***** Featured Games End ***** -->

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