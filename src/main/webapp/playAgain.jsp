<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="connectionpool.ConnectionPool"%>
<%@page import="players.PlayersService"%>
<%@page import="players.Player"%>
<%@page import="Cartas.*"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/estilo.css">
    <!-- Enlace a Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            width: auto;
            background-size: cover;
            background-position: center;
            background-image: url("assets/img/BlackjackBack2.jpg");
            position: relative;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white;
        }
        
        .center {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }
        
        .buttons {
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="center">
            <% 
                int ganador = 0;
                if(request.getParameter("winner") != null && request.getParameter("winner").length() > 0){
                    ganador = Integer.parseInt(request.getParameter("winner"));
                }
                
                int VJugador = 0;
                if(request.getParameter("valorJugador") != null && request.getParameter("valorJugador").length() > 0){
                    VJugador = Integer.parseInt(request.getParameter("valorJugador"));
                }

                int VCPU = 0;
                if(request.getParameter("valorCPU") != null && request.getParameter("valorCPU").length() > 0){
                    VCPU = Integer.parseInt(request.getParameter("valorCPU"));
                }

                String mensaje = "";
                if(ganador == 1){
                    mensaje = "Enhorabuena!!! Has ganado<br>Puntuación crupier = " + VCPU + "<br>Tu puntuación = " + VJugador;
                } else if(ganador == 2){
                    mensaje = "Lo siento, has perdido la partida.<br>Puntuación crupier = " + VCPU + "<br>Tu puntuación = " + VJugador;
                } else if(ganador == 3){
                    mensaje = "Has empatado<br>Puntuación crupier = " + VCPU + "<br>Tu puntuación = " + VJugador;
                }

                out.println(mensaje);
            %>
        </div>
        <div class="buttons ">
            <form method="post" action="home.jsp" >
                <button class="btn btn-light mr-2" type="submit">Volver al inicio</button>
            </form>
            <form method="post" action="Game.jsp" onsubmit="return comprobacionTokens();">
                <input type="hidden" id="newGame" name="newGame" value="true">
                <button class="btn btn-dark" type="submit">Jugar de nuevo</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JavaScript y dependencias -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>