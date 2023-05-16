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
@WebServlet(name = "ServletSumaPuntos", urlPatterns = {"/servletSumaPuntos"})
public class ServletSumaPuntos extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Usuario usuario = (Usuario) req.getSession().getAttribute("usuarioSesion");
            UserServices servicio = new UserServices();
            int puntos = Integer.parseInt(req.getParameter("puntos"));
            if(puntos==0) {
                req.setAttribute("enhorabuena", "Lo sentimos " + usuario.getNombre() + " , no has conseguido ningun punto, sigue practicando!");
            }
            else{
                servicio.sumaPuntos(usuario, puntos);
                req.getSession().setAttribute("usuarioSesion", servicio.userFromNick(usuario.getNick()));
                req.setAttribute("enhorabuena", "Enhorabuena " + usuario.getNombre() + " , has conseguido " + puntos + " puntos.");
            }
            req.getRequestDispatcher("/enhorabuena.jsp").forward(req, resp);
        //Si hay alguna excepcion se redirige a la pagina login y se envia un mensaje de error
        } catch (Exception e){
            req.setAttribute("error", e.getMessage());
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }

    }
}

