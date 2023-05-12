<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="edu.fpdual.client.dto.Usuario" %>
<%@ page import="edu.fpdual.client.dto.RankinUsuarios" %>
<%@ page import="java.util.*" %>


<html lang="es-ES">
<head>
    <link rel="stylesheet" type="text/css" href="../css/estilo.css">

    <title>Ejemplo entrada y salida de datos</title>
</head>
<body>

<%@include file="./mostrarPuntos.jsp"%>

<table>
    <tr>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Telefono</th>
        <th>Email</th>
        <th>Puntos</th>
        <th>Acciones</th>
    </tr>
    <%
        Set<Usuario> setUsuarios = (Set<Usuario>) session.getAttribute("listaUsuarios");
        List<Usuario> listaUsuarios = new ArrayList<>(setUsuarios.stream().toList());
        RankinUsuarios rankin = new RankinUsuarios();
        listaUsuarios.sort(rankin);


        for (Usuario contacto : listaUsuarios) { %>
    <tr>
        <td><%=contacto.getNombre()%>
        </td>
        <td><%=contacto.getApellido()%>
        </td>
        <td><%=contacto.getTelefono()%>
        </td>
        <td><%=contacto.getEmail()%>
        </td>
        <td><%=contacto.getPuntos()%>
        </td>
        <td><img src="https://cdn-icons-png.flaticon.com/128/3858/3858474.png" alt="">
            <img src="https://cdn-icons-png.flaticon.com/512/3159/3159218.png" alt=""></td>
    </tr>
    <%}
    if(request.getAttribute("existe")!=null){%>
    <p><%=request.getAttribute("existe")%></p>
    <%}%>

</table>
<form action="../nuevoUsuario.jsp">
    <button type="submit">Nuevo</button>
</form>
</body>
</html>
