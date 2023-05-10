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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        req.setAttribute("victoria", "Enhorabuena, has ganado 5 puntos");

        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }
}
