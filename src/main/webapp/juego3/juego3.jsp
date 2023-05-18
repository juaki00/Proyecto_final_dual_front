<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>¿Qué es esta imagen?</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<div id="main-form">
	<div id="image-container">
		<img id="current-image" src="">
	</div>

	<form id="answer-form">
		<label for="answer-input">¿Qué animal es?</label>
		<input type="text" id="answer-input" name="answer">
		<input type="submit" id="send" value="Enviar">
	</form>

	<p id="result"></p>
	<form action="../servletSumaPuntos">
	    <button id="resetButton" class="finish" type="submit" >Terminar juego</button>
	    <input type="hidden" name="puntos" id="puntos" value="0">
	</form>
		</div>
	<script src="js/juego3.js"></script>
</body>
</html>



  