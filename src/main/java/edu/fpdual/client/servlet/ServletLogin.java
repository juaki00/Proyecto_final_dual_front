package edu.fpdual.client.servlet;

import edu.fpdual.client.services.UserServices;
import edu.fpdual.client.dto.Usuario;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Comprueba que el usuario y contraseña son correctos e inicia sesion
 */
@WebServlet(name = "ServletLogin", urlPatterns = {"/servlet-login"})
public class ServletLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            UserServices userService = new UserServices();
            String nickIntroducido = req.getParameter("usuario");
            String passwordIntroducido = req.getParameter("contrasena");
            String passwodCorrecto = userService.getPass(nickIntroducido);
            Usuario usuario = userService.userFromNick(nickIntroducido);

            //Si el usuario y la contraseña son correctos se devuelve una variable de sesion Usuario
            // y redirige a la pagina usuarios
            if ((usuario != null && passwordIntroducido != null && passwordIntroducido.equals(passwodCorrecto))) {
                req.getSession().setMaxInactiveInterval(400);
                req.getSession().setAttribute("listaUsuarios", userService.getAllUsers());
                req.getSession().setAttribute("usuarioSesion", usuario);
                resp.sendRedirect("/front/comun/indexLogeado.jsp");

            //Si el usuario y contraseña no son correctos  se devuelve un mensaje de error
            // y redirige a la pagina login
            } else {
                req.setAttribute("error", "Error al insertar usuario o contraseña");

                req.getRequestDispatcher("/login.jsp").forward(req, resp);
            }

        //Si hay alguna excepcion se redirige a la pagina login y se envia un mensaje de error
        }catch (Exception e){
            req.setAttribute("error", "Error al conectarse a la base de datos");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }

    }
}
