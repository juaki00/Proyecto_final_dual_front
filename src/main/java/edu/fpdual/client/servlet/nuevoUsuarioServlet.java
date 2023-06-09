package edu.fpdual.client.servlet;

import edu.fpdual.client.dto.Usuario;

import edu.fpdual.client.services.UserServices;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Inserta usuario si no exisste ese nick registrado
 */
@WebServlet(name = "nuevoUsuarioServlet", urlPatterns = {"/nuevo_usuario"})
public class nuevoUsuarioServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {

            //Guardamos los parametros recibidos en variables
            String nickIntroducido = req.getParameter("nick");
            String passIntroducido = req.getParameter("passwd");
            String nombreIntroducido = req.getParameter("nombre");
            String apellidoIntroducido = req.getParameter("apellido");
            String telefonoIntroducido = req.getParameter("telefono");
            String emailIntroducido = req.getParameter("email");

            UserServices userServices = new UserServices();

            //Si el nick existe redireccionamos a la pagina nuevousuario y enviamos el mensaje de error
            if (userServices.existeNick(nickIntroducido)) {
                req.getSession().setAttribute("existe", "El nick " + nickIntroducido + " ya existe");
                resp.sendRedirect("/front/nuevoUsuario.jsp");

                //Si el nick no existe insertamos el usuario
            } else {
                Usuario user = new Usuario(nickIntroducido, passIntroducido, nombreIntroducido, apellidoIntroducido, telefonoIntroducido, emailIntroducido);
                userServices.insertUser(user);
                userServices = new UserServices();
                resp.sendRedirect("/front/login.jsp");
            }


        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

}