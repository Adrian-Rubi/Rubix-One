<%@page contentType="text/html" pageEncoding="UTF-8"%>                 

<!DOCTYPE html>                                                                                                            

<html>

<head>                                                                                                                              

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Login - Rubix One   </title>   

    <style>

        /* RESET GENERAL */

        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }


        /* CUERPO PRINCIPAL */ 

        body{                                                               /* Estilo*/

            height: 100vh;                                         /* Tamano de lapantalla*/

            display: flex;                                           /*display:flex permite centrar elementos*/

            justify-content: center;                    /*Centra horizontalmente*/

            align-items: center;                            /*Centra verticalmente.*/

            background: linear-gradient(135deg,#0f2027, #203a43, #2c5364);   /*Fondo Futurista*/

            overflow: hidden;
        }


        /* CONTENEDOR LOGIN */

        .login-container{                                                                               /*CAJA PRINCIPAL*/

            width: 400px;                                                                                /*ANCHO DEL CUADRO*/

            padding: 40px;                                                                              /* ESPACIO INTERNO*/

            border-radius: 20px;                                                                /*ESQUINAS REDONDEADAS*/

            box-shadow: 0px 0px 20px rgba(0,0,0,0.3);                   /*Agrega Sombra*/

            text-align: center;
            
          
            
            /*EFECTO VIDRIO   GLASSMORPHISM*/
            background: rgba(255, 255, 255, 0.12);
            
            backdrop-filter: blur(12px);                                                      /* Hace que el fondo detrás del login se vea borroso.*/
            
            -webkit-backdrop-filter: blur(12px);
            
            /*BORDE TRANSPARENTE*/
            border: 1px solid rgba(255, 255, 255, 0.2);                         /* GENERA UN BORDE SUTIL*/
            
            /*SOMBRA*/
            box-shadow: 0px 8px 32px rgba(0,0,0,0.37);
            
            /*BRILLO NEON*/
            box-shadow:
                0 0 10px rgba(0, 255, 255, 0.6 ),
                0 0 20px rgba(0, 255, 255, 0.5 ),
                0 0 40px rgba(0, 255, 255, 0.4 ),
                0 0 80px rgba(0, 255, 255, 0.3 );
            
            /*Animacion*/
            animation: aparecer 2.5s ease,
                                    flotar 4s ease-in-out infinite,
                                    neon 3s infinite alternate;
                                
        }
        
        /*KEYFRAMES*/
        
       /*APARECER*/
        @keyframes aparecer{
            
            from{
                opacity: 0;
                transform: translateY(50px);
            }
            
            to{
                opacity: 1;
                transform: translateY(0);
            }
        }

        /*FLOTAR*/
        @keyframes flotar{

    0%{
        transform: translateY(0px);
    }

    50%{
        transform: translateY(-8px);
    }

    100%{
        transform: translateY(0px);
    }

}

        /*NEON*/
        @keyframes neon{
        from{
            box-shadow: 
                0 0 10px rgba(0, 255, 255, 0.6 ),
                0 0 20px rgba(0, 255, 255, 0.5 ),
                0 0 40px rgba(0, 255, 255, 0.4 ),
                0 0 80px rgba(0, 255, 255, 0.3 );
        }
        
        to{
            
            box-shadow: 
                0 0 20px rgba(0,255,255,1),
                0 0 40px rgba(0,255,255,0.9),
                0 0 60px rgba(0,255,255,0.8),
                0 0 100px rgba(0,255,255,0.7);
        }
}

        /* TITULO */

        .login-container h1{

            color: #00cccc;

             font-size: 32px;

             letter-spacing: 08px;                                                                  /*Separa las letras.*/

             text-transform: uppercase;
             
            /* EFECTO FUTURISTA 
            text-shadow:
            0 0 5px #00ffff,
            0 0 10px #00ffff,
            0 0 20px #00ffff,
            0 0 40px #00ffff; */


            /* ANIMACIÓN
            animation: brilloTexto 2s infinite alternate; */

        }


        /* SUBTITULO */

        .login-container p{

            color: gray;

            margin-bottom: 20px;
            

        }
        
        /*Labels*/
        label{
            color: #00cccc;;
            font-size: 14px;
            font-weight: bold;
            letter-spacing: 1px;
            text-shadow: 0px 0px 8px rgba(0, 198, 255, 0.8);                           /*TEXTO BRILLA*/
        }


        /* GRUPOS DE INPUTS */

        .input-group{

            text-align: left;

            margin-bottom: 20px;

        }


        /* LABELS */

        .input-group label{

            display: block;

            margin-bottom: 5px;

            font-weight: bold;

        }


        /* INPUTS */

        .input-group input{

            width: 100%;

            padding: 12px;

            border: 1px solid #ccc;

            border-radius: 8px;

            font-size: 15px;

        }
        
        /* INPUTS (TEX - PASS) */

        input[type="text"],
        input[type="password"]{

            width: 100%;

            padding: 14px;

            margin: 12px 0;

            border: 1px solid rgba(255,255,255,0.2);

            border-radius: 10px;

            background: rgba(255,255,255,0.08);

            backdrop-filter: blur(10px);

            color: #009999;

            font-size: 15px;

            outline: none;

            transition: all 0.3s ease;

            box-shadow: inset 0px 0px 8px rgba(255,255,255,0.1);

}

/* TEXTO DENTRO DE LOS INPUTS */

        ::placeholder{

            color: #00c6ff;

            font-size: 14px;

            letter-spacing: 1px;

            opacity: 0.8;

          }

        /* BOTÓN LOGIN FUTURISTA */

        .btn-login{

            width: 100%;

            padding: 14px;

            background: linear-gradient(135deg, #00c6ff, #00cccc);

            color: white;

            border: none;

            border-radius: 10px;

            font-size: 16px;
            
            font-weight: bold;

            cursor: pointer;

            transition: all 0.3s ease;
            
            box-shadow: 0px 0px 15px rgba(0, 198, 255, 0.6);

    }
        
        /*BOTON REGISTRASE*/
        
        .btn-register{
            
            width: 100%;

            padding: 14px;

            margin-top: 12px;

            background: transparent;

            color: #00cccc;

            border: 2px solid #00c6ff;

            border-radius: 10px;

            font-size: 16px;

            font-weight: bold;

            cursor: pointer;

            transition: all 0.3s ease;

            box-shadow: 0px 0px 15px rgba(0, 198, 255, 0.4);
          }


        /* EFECTO HOVER : pseudo-selector de CSS que se activa cuando el usuario coloca el cursor del mouse sobre un elemento.             */           

        .btn-login:hover{                                                                                   /*Se activa cuando pasas el mouse encima.*/

            transform: translateY(-3px);                                                        /*Hace que el botón suba.*/
            box-shadow: 0px 0px 25px rgba(0, 198, 255, 0);
            background: linear-gradient(135deg, #0072ff, #00c6ff);

        }
        
        .btn-login:active{               /*Se activa cuando haces clic.*/
            
            transform: scale(0.97);
        }
        
        .btn-register:hover{
            
            transform: translateY(-3px);                                                        /*Hace que el botón suba.*/
            box-shadow: 0px 0px 25px rgba(0, 198, 255, 0);
            background: linear-gradient(135deg, #0072ff, #00c6ff);
        }
        
        .btn-register:active{

    transform: scale(0.97);
    }


        /* FOOTER =      pie de página de un sitio web.*/

        .footer{

            margin-top: 20px;

            color: gray;

            font-size: 13px;

        }

    </style>

</head> 


<body>


    <div class="login-container">

        <h1>Rubix One </h1>

        <p>Gestión Inteligente de Inventario & Ventas</p>


        <form action="LoginServlet" method="POST">

            <div class="input-group">

                <label>Usuario</label>

                <input 
                       type="text"
                       name="usuario"
                       placeholder="Ingrese su usuario"
                       required>

            </div>


            <div class="input-group">

                <label>Contraseña</label>

                <input 
                       type="password"
                       name="contrasena"
                       placeholder="Ingrese su contraseña"
                       required>

            </div>


            <button type="submit" class="btn-login">

                Iniciar Sesión

            </button>
            
            <button
                type="button"
                class="btn-register"
                onclick="window.location.href='registro.jsp' ">
                
                Registrarse
            </button>

        </form>


        <div class="footer">

            <p>© 2026 Sistema Web Inteligente.</p>
            <p>Adrian Rubi</p>
    </div>
</body>
</html>


