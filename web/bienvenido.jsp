<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession sessionUser = request.getSession(false);

    if (sessionUser == null || sessionUser.getAttribute("usuario") == null) {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        return;
    }

    String usuario = (String) sessionUser.getAttribute("usuario");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rubix One</title>
</head>

<body>

    <h1>Bienvenido a Rubix One</h1>

    <h2>Inicio de sesión exitoso</h2>

    <p>Usuario: <%= usuario %></p>

</body>
</html>