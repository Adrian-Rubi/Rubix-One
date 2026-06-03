<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Registro - Rubix One</title>

<style>

/* RESET */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,sans-serif;
}

/* BODY */

body{

    height:100vh;

    display:flex;

    justify-content:center;

    align-items:center;

    background:linear-gradient(
        135deg,
        #0f2027,
        #203a43,
        #2c5364
    );

    overflow:hidden;
}

/* CONTENEDOR */

.register-container{

    width:450px;

    padding:40px;

    border-radius:20px;

    text-align:center;

    background:rgba(255,255,255,0.12);

    backdrop-filter:blur(12px);

    border:1px solid rgba(255,255,255,0.2);

    box-shadow:
        0 0 10px rgba(0,255,255,0.6),
        0 0 20px rgba(0,255,255,0.5),
        0 0 40px rgba(0,255,255,0.4);

    animation:
        aparecer 2s ease,
        flotar 4s ease-in-out infinite;
}

/* TITULO */

.register-container h1{

    color:#00cccc;

    font-size:32px;

    letter-spacing:5px;

    text-transform:uppercase;
}

/* SUBTITULO */

.register-container p{

    color:#dcdcdc;

    margin-bottom:25px;
}

/* INPUT GROUP */

.input-group{

    text-align:left;

    margin-bottom:15px;
}

/* LABELS */

.input-group label{

    color:#00cccc;

    font-weight:bold;

    font-size:14px;
}

/* INPUTS */

.input-group input{

    width:100%;

    padding:14px;

    margin-top:5px;

    border-radius:10px;

    border:1px solid rgba(255,255,255,0.2);

    background:rgba(255,255,255,0.08);

    color:#00ffff;

    outline:none;
}

/* BOTON CREAR CUENTA */

.btn-register{

    width:100%;

    padding:14px;

    margin-top:10px;

    border:none;

    border-radius:10px;

    font-size:16px;

    font-weight:bold;

    cursor:pointer;

    color:white;

    background:linear-gradient(
        135deg,
        #00c6ff,
        #00cccc
    );

    transition:0.3s;

    box-shadow:
        0 0 15px rgba(0,198,255,0.6);
}

.btn-register:hover{

    transform:translateY(-3px);

    box-shadow:
        0 0 25px rgba(0,198,255,0.9);
}

/* BOTON VOLVER */

.btn-back{

    width:100%;

    padding:14px;

    margin-top:12px;

    display:block;

    text-decoration:none;

    border-radius:10px;

    color:#00ffff;

    border:2px solid #00c6ff;

    transition:0.3s;
}

.btn-back:hover{

    background:#00c6ff;

    color:white;
}

/* ANIMACIONES */

@keyframes aparecer{

    from{
        opacity:0;
        transform:translateY(50px);
    }

    to{
        opacity:1;
        transform:translateY(0);
    }
}

@keyframes flotar{

    0%{
        transform:translateY(0);
    }

    50%{
        transform:translateY(-8px);
    }

    100%{
        transform:translateY(0);
    }
}

</style>

</head>

<body>

<div class="register-container">

    <h1>Rubix One</h1>

    <p>Registro de Usuario</p>

    <form action="RegistroServlet" method="POST">

        <div class="input-group">
            <label>Nombre Completo</label>
            <input type="text" name="nombre" required>
        </div>

        <div class="input-group">
            <label>Usuario</label>
            <input type="text" name="usuario" required>
        </div>

        <div class="input-group">
            <label>Correo Electrónico</label>
            <input type="email" name="correo" required>
        </div>

        <div class="input-group">
            <label>Contraseña</label>
            <input type="password" name="contrasena" required>
        </div>

        <div class="input-group">
            <label>Confirmar Contraseña</label>
            <input type="password"
                   name="confirmarContrasena"
                   required>
        </div>

        <button type="submit"
                class="btn-register">

            Crear Cuenta

        </button>

    </form>

    <a href="index.jsp"
       class="btn-back">

       Volver al Login

    </a>

</div>

</body>

</html>