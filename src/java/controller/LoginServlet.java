package controller;

import java.io.IOException;                                                     //  Permite manejar errores relacionados con entrada y salida de datos.
import jakarta.servlet.ServletException;                           // Permite manejar errores propios de los Servlets.
import jakarta.servlet.annotation.WebServlet;               // Permite usar la anotación @WebServlet para registrar el Servlet.
import jakarta.servlet.http.HttpServlet;                            // Clase padre de todos los Servlets HTTP.
import jakarta.servlet.http.HttpServletRequest;           // Objeto que recibe los datos enviados desde el formulario.
import jakarta.servlet.http.HttpServletResponse;        // Objeto que permite enviar respuestas al navegador.
import jakarta.servlet.http.HttpSession;


// Registramos el Servlet con la URL LoginServlet
@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet {
    // Esta clase hereda de HttpServlet, gracias a esto puede recibir peticiones GET y POST.

    
    @Override
    // Indica que estamos sobrescribiendo un método de la clase padre.

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // Este método se ejecuta cuando el formulario usa:  method="POST"

        
        // Capturamos el valor escrito en el input: name="usuario"
        String usuario = request.getParameter("usuario");

        
        // Capturamos el valor escrito en el input: name="contrasena"
        String contrasena = request.getParameter("contrasena");

        
        // Validación temporal.
        // Más adelante consultaremos la base de datos.
        if(usuario.equals("admin") && contrasena.equals("1234")){

        HttpSession session = request.getSession() ;
        session.setAttribute("usuario", usuario);
            
            // Si los datos son correctos
            // redireccionamos a bienvenido.jsp
            response.sendRedirect(request.getContextPath() + "/bienvenido.jsp");

        }else{

            
            // Si los datos son incorrectos
            // mostramos un mensaje simple en pantalla
            response.getWriter().println(
                "<h1>Usuario o contraseña incorrectos</h1>"
            );

        }
    }
}