<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Guess a Word Game JavaScript | CodingNepal</title>
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <div class="wrapper">
      <h1>Guess the Word</h1>
      <div class="content">
        <input type="text" class="typing-input" maxlength="1">
        <div class="inputs"></div>
        <div class="details">
          <p class="hint">Pista: <span></span></p>
          <p class="guess-left">Oportunidades restantes: <span></span></p>
          <p class="wrong-letter">Letras erróneas: <span></span></p>
        </div>
        <button class="reset-btn">Siguiente palabra</button>
        <!--//////////////////////////////////////////////////////////////////////////////// -->
        <form action="../servletSumaPuntos">
          <div style="margin-top: 1em;">
            <button class="reset-btn" id="checkbutton" class="chk-button" type="submit">Finalizar</button>
            <input type="hidden" name="puntos" id="puntos" value="0">
          </div>
        </form>
        <!--//////////////////////////////////////////////////////////////////////////////// -->
      </div>
    </div>
    <script src="js/words.js"></script>
    <script src="js/script.js"></script>

  </body>
</html>