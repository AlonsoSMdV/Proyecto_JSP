<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="connectionpool.ConnectionPool"%>
<%@page import="players.PlayersService"%>
<%@page import="players.Player"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blackjack</title>
    <link rel="stylesheet" href="assets/css/estilo.css">
    <!-- Enlace a Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <%
        //Usuario de la base de datos
        String dbuser = "juan";
        //Contraseña de la base de datos
        String dbpassword = "12345678";
        //Pool de conexiones a la base de datos
        ConnectionPool pool = new ConnectionPool("jdbc:mysql://localhost:3306/blackjack", dbuser, dbpassword);
        PlayersService players = new PlayersService(pool.getConnection());
        Player player = (Player)session.getAttribute("player");
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

        long wins = player.getWins();
        long loses = player.getLoses();

        if(ganador == 1){
          wins = wins + 1;
        }else if(ganador == 2){
          loses = loses + 1;
        }

        Player newPlayerData = new Player(player.getId(), player.getName(), player.getSurname(), player.getPlayername(),wins, loses);
        if(players.updateWinsAndLoses(newPlayerData)==1){
            session.setAttribute("player", newPlayerData);
            String redirectURL = "";
            if(ganador == 1){
              redirectURL = "playAgain.jsp?winner=1&valorJugador=" + VJugador + "&valorCPU=" + VCPU;
            }else if(ganador == 2){
              redirectURL = "playAgain.jsp?winner=2&valorJugador=" + VJugador + "&valorCPU=" + VCPU;
            }
            response.sendRedirect(redirectURL);
        }
        else
            response.sendRedirect("playAgain.jsp?error=No ha sido posible cambiar la información");
    %>

    <!-- Bootstrap JavaScript y dependencias -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>