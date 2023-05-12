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
@WebServlet(name = "Servletcheckcrucigrama2", urlPatterns = {"/servlet-check-crucigrama2"})
public class Servletcheckcrucigrama2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            Usuario usuario = (Usuario) req.getSession().getAttribute("usuarioSesion");
            int puntos = 0;
            String palabrasAcertadas = "/";

            String palabra1 = req.getParameter("p2-1");
            palabra1 += req.getParameter("p1-2");
            palabra1 += req.getParameter("p3-2");
            palabra1 += req.getParameter("p1-4");
            palabra1 += req.getParameter("p4-2");
            palabra1 += req.getParameter("p1-6");
            palabra1 += req.getParameter("p5-2");
            palabra1 += req.getParameter("p1-8");
            palabra1 += req.getParameter("p6-2");

            String palabra2 = req.getParameter("p2-1");
            palabra2 += req.getParameter("p2-2");
            palabra2 += req.getParameter("p2-3");

            String palabra3 = req.getParameter("p3-1");
            palabra3 += req.getParameter("p3-2");
            palabra3 += req.getParameter("p3-3");
            palabra3 += req.getParameter("p3-4");
            palabra3 += req.getParameter("p3-5");
            palabra3 += req.getParameter("p3-6");

            String palabra4 = req.getParameter("p4-1");
            palabra4 += req.getParameter("p4-2");
            palabra4 += req.getParameter("p4-3");

            String palabra5 = req.getParameter("p5-1");
            palabra5 += req.getParameter("p5-2");
            palabra5 += req.getParameter("p5-3");
            palabra5 += req.getParameter("p5-4");

            String palabra6 = req.getParameter("p6-1");
            palabra6 += req.getParameter("p6-2");
            palabra6 += req.getParameter("p6-3");

            if(palabra1.equalsIgnoreCase("crocodile")){
                puntos++;
                palabrasAcertadas += " Crocodile /";
            }
            if(palabra2.equalsIgnoreCase("cat")){
                puntos++;
                palabrasAcertadas += " Cat /";
            }
            if(palabra3.equalsIgnoreCase("monkey")){
                puntos++;
                palabrasAcertadas += " Monkey /";
            }
            if(palabra4.equalsIgnoreCase("dog")){
                puntos++;
                palabrasAcertadas += " Dog /";
            }
            if(palabra5.equalsIgnoreCase("bird")){
                puntos++;
                palabrasAcertadas += " Bird /";
            }
            if(palabra6.equalsIgnoreCase("pet")){
                puntos++;
                palabrasAcertadas += " Pet /";
            }

            req.setAttribute("enhorabuena", "Enhorabuena, has ganado " + puntos + " puntos por acertar las palabras: " + palabrasAcertadas);
            req.getRequestDispatcher("/servlet-victoria").forward(req, resp);

        //Si hay alguna excepcion se redirige a la pagina login y se envia un mensaje de error
        }catch (Exception e){
            req.setAttribute("error", "Error al conectarse a la base de datos");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }

    }
}
