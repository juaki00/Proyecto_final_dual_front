
<%@ page import="edu.fpdual.client.dto.Usuario" %>
<!-- Puntos del usuario -->

<%if(session.getAttribute("usuarioSesion")!=null){%>
<%      Usuario user = (Usuario) session.getAttribute("usuarioSesion");%>
<%      int puntos = user.getPuntos();%>
<%="puntos: " + puntos%>
<%}%>

