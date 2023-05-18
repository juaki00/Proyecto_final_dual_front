<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<title>basic</title>
<meta name="generator" content="EclipseCrossword" />
	<link rel="stylesheet" href="style.css">
</head>
<body>

<style>
.btn{
  color: #318aac !important;
  font-size: 20px;
  font-weight: 500;
  padding: 0.5em 1.2em;
  background: rgba(0,0,0,0);
  border: 2px solid;
  border-color: #f9df4d;
  transition: all 1s ease;
  position: relative;
  border-radius:10px;
}

.btn:hover{
  background: #f9df4d;
  color: #fff !important;
}

.btn a{
color:white;
font-size:20px;
text-decoration:none;
}
</style>

<div class="contenedor">
    <button class="btn"><a href="basic.jsp">Basico</a></button>
    <button class="btn"><a href="diasSemana.jsp">Dias de la semana</a></button>
    <button class="btn"><a href="frutas.jsp">Frutas</a></button>
    <button class="btn"><a href="mesesAhno.jsp">Meses del año</a></button>
</div>
</body>
</html>
