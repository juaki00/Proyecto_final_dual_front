package edu.fpdual.client.servlet;

import edu.fpdual.client.dto.Usuario;
import edu.fpdual.client.email.Sender;
import edu.fpdual.client.services.UserServices;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * Comprueba que el usuario y contraseña son correctos e inicia sesion
 */
@WebServlet(name = "ServletEmail", urlPatterns = {"/servlet-email"})
public class ServletEmail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            UserServices userService = new UserServices();
            String motivo = req.getParameter("motivo");
            String contenido = req.getParameter("contenido");
            Usuario usuario = (Usuario) req.getSession().getAttribute("usuarioSesion");
            if (validarCorreo(usuario.getEmail())) {
                new Sender().send("aprendeingles551@gmail.com", "aprendeingles551@gmail.com", motivo,
                        usuario.getNick() + "(" + usuario.getEmail() + ") envia: <br>" + contenido);
                new Sender().send("aprendeingles551@gmail.com", usuario.getEmail(), "Kid Zone",
                        "Gracias por contactar con nosotros " + usuario.getNombre() + " le responderemos lo antes posible");

                req.getSession().setAttribute("enviado", "Correo enviado");
                req.getRequestDispatcher("/contacto.jsp").forward(req, resp);
            } else {

                req.getSession().setAttribute("error", "Correo electronico erroneo");
                req.getRequestDispatcher("/contacto.jsp").forward(req, resp);
            }

            //Si hay alguna excepcion se redirige a la pagina login y se envia un mensaje de error
        } catch (ServletException e) {
            req.getSession().setAttribute("error", "Error del servlet");
            req.getRequestDispatcher("/contacto.jsp").forward(req, resp);
        } catch (FileNotFoundException e) {
            req.getSession().setAttribute("error", "Error al enviar el correo electronico, fichero no encontrado");
            req.getRequestDispatcher("/contacto.jsp").forward(req, resp);
        } catch (IOException e) {
            req.getSession().setAttribute("error", "Error al enviar el correo electronico, error de entrada/salida");
            req.getRequestDispatcher("/contacto.jsp").forward(req, resp);
        }

    }

    public static boolean validarCorreo(String correo) {
        // Comprobar si la cadena está vacía o es nula
        if (correo == null || correo.length() == 0) {
            return false;
        }

        // Comprobar si la cadena contiene un solo @
        int arrobaIndex = correo.indexOf('@');
        if (arrobaIndex == -1 || arrobaIndex != correo.lastIndexOf('@')) {
            return false;
        }

        // Comprobar si la cadena contiene un punto después de la @
        int puntoIndex = correo.indexOf('.', arrobaIndex);
        if (puntoIndex == -1 || puntoIndex == arrobaIndex + 1 || puntoIndex == correo.length() - 1) {
            return false;
        }

        return true;
    }
}
