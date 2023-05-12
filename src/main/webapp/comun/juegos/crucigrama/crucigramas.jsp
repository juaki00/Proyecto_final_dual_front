<%@ page pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
    <title>Login | Tailwind Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>

<body class="h-screen font-sans login bg-cover">
<h1>Pagina de juegos</h1>
<form action="../servlet-logout">
    <button type="submit" class="login">logout</button>
</form>
<form action="../../../contacto.jsp">
    <button type="submit" class="nuevo">Contactanos</button>
</form>
<form action="./servlet-ranking">
    <button type="submit" class="nuevo">Ver Ranking</button>
</form>
<form action="../../indexLogeado.jsp">
    <button type="submit" class="nuevo">Inicio</button>
</form>
<form action="crucigrama1.jsp">
    <button type="submit" class="nuevo">Crucigrama1</button>
</form>
<form action="crucigrama2.jsp">
    <button type="submit" class="nuevo">Crucigrama2</button>
</form>

</body>

</html>