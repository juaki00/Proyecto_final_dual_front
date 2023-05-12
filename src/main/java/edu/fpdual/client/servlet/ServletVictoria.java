package edu.fpdual.client.servlet;

import edu.fpdual.client.dto.Usuario;
import edu.fpdual.client.services.UserServices;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * Comprueba que el usuario y contraseña son correctos e inicia sesion
 */
@WebServlet(name = "ServletVictoria", urlPatterns = {"/servlet-victoria"})
public class ServletVictoria extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest servletRequest, HttpServletResponse resp) throws ServletException, IOException {
        doPost(servletRequest, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        Usuario usuario = (Usuario)req.getSession().getAttribute("usuarioSesion");
        if(usuario != null) {
            UserServices service = new UserServices();
            int puntos = (int)req.getSession().getAttribute("nPuntos");
            service.sumaPuntos(usuario, puntos);

        }
//        req.getRequestDispatcher("/front/comun/usuarios.jsp").forward(req, resp);
//            resp.sendRedirect("/front/comun/usuarios.jsp");
    }
}
