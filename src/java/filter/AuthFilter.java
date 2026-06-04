package filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/bienvenido.jsp")
public class AuthFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request,
                                        ServletResponse response,
                                        FilterChain chain)
            throws IOException, ServletException {
        
        System.out.println(">>> AuthFilter ejecutado");

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String loginURI = req.getContextPath() + "/index.jsp";
        String loginServlet = req.getContextPath() + "/LoginServlet";

        String requestURI = req.getRequestURI();

        HttpSession session = req.getSession(false);
        boolean loggedIn = (session != null && session.getAttribute("usuario") != null);

        // 🔹 Permitir recursos públicos
        boolean isLoginPage = requestURI.equals(loginURI);
        boolean isLoginServlet = requestURI.equals(loginServlet);
        boolean isResource = requestURI.contains("/css/")
                          || requestURI.contains("/js/")
                          || requestURI.contains("/images/");

        if (loggedIn) {
            chain.doFilter(request, response);
        } else {
             res.sendRedirect(req.getContextPath() + "/index.jsp");
        }
    }
}