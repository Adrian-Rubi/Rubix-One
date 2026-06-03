package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegistroServlet")
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");

        String usuario = request.getParameter("usuario");

        String correo = request.getParameter("correo");

        String contrasena = request.getParameter("contrasena");

        String confirmarContrasena =
                request.getParameter("confirmarContrasena");

        response.setContentType("text/html");

        response.getWriter().println("<h1>Usuario recibido correctamente</h1>");

        response.getWriter().println("<p>Nombre: " + nombre + "</p>");

        response.getWriter().println("<p>Usuario: " + usuario + "</p>");

        response.getWriter().println("<p>Correo: " + correo + "</p>");

    }
}