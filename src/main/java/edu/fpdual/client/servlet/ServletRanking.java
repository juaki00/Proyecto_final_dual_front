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
@WebServlet(name = "ServletRanking", urlPatterns = {"/servlet-ranking"})
public class ServletRanking extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            UserServices userService = new UserServices();


                req.getSession().setAttribute("listaUsuarios", userService.getAllUsers());

                req.getRequestDispatcher("/ranking.jsp").forward(req, resp);

        //Si hay alguna excepcion se redirige a la pagina login y se envia un mensaje de error
        }catch (Exception e){
            req.setAttribute("error", "Error al conectarse a la base de datos");
            req.getRequestDispatcher("/ranking.jsp").forward(req, resp);
        }

    }
}
