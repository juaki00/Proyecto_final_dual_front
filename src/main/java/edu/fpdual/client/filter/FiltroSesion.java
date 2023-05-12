package edu.fpdual.client.filter;

import edu.fpdual.client.dto.Usuario;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Filtro que redirecciona a la pagina de login si la sesion no está iniciada
 */
@WebFilter(filterName="FiltroSesion", urlPatterns={"/comun/*","/juegos.jsp","/profile.jsp", "/co"}, dispatcherTypes= {DispatcherType.REQUEST,DispatcherType.FORWARD})
public class FiltroSesion implements  Filter {

    @Override
    public void init(FilterConfig filterConfig){
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest)servletRequest;

        Usuario usuario = (Usuario)req.getSession().getAttribute("usuarioSesion");

        if(usuario == null){
            ((HttpServletResponse)servletResponse).sendRedirect("/front/login.jsp");
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }
}