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
    <title>Blackjack</title>
    <link rel="stylesheet" href="assets/css/estilo.css">
    <!-- Enlace a Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
    body{
          width: auto;
          background-size: cover;
          background-image: url("assets/img/tapete.jpg");
          position: relative;
        }

    .cartaReverso{
        padding:30px;
        display:flex;
        align-items: center;
        justify-content: center;
    }

    .cartaReverso img {
        width:5%;
        height: auto;
    }

    .buttons{
        display: flex;
        align-items: center;
        justify-content: center;
        padding-bottom: 3%;
    }


    .cartas{
        padding: 15px 0px 15px 0px;
        display:flex;
        align-items: center;
        justify-content: center;
    }

    .cartas img {
        width: 45%;
        height: auto;
    }

    .valor{
        font-size: 1.5rem;
        text-align: center;
    }
    </style>
</head>
<body>
    <%



    boolean newGame = Boolean.parseBoolean(request.getParameter("newGame")); 
    
    Mazo mazo = (Mazo) session.getAttribute("mazo"); 
    if (mazo == null) {
        mazo = new Mazo();
        session.setAttribute("mazo", mazo);
    }

    Integer ValorJugador = (Integer) session.getAttribute("ValorJugador");
    if (ValorJugador == null || newGame) {
        ValorJugador = 0;
        session.setAttribute("ValorJugador", ValorJugador);
    }


    int ValorCPU = 0;

    boolean plantarse = Boolean.parseBoolean(request.getParameter("plantarse"));

    ArrayList<Carta> CartasJugador = (ArrayList<Carta>) session.getAttribute("CartasJugador");
    if (CartasJugador == null || newGame) {
        CartasJugador = new ArrayList<Carta>();
        session.setAttribute("CartasJugador", CartasJugador);
    }

    if (newGame) {
        session.removeAttribute("mazo");
        session.removeAttribute("CartasJugador");
        session.removeAttribute("ValorJugador");
        }


    boolean pedir = Boolean.parseBoolean(request.getParameter("pedir")); 
    if (pedir) {
        if (ValorJugador==0) {
            for (int i=0; i<2; i++) { 
                ValorJugador+=(Integer)((mazo.getCarta()).getNumeroAsInt()==0?10:(mazo.getCarta()).getNumeroAsInt());
                CartasJugador.add(mazo.extrae());
                session.setAttribute("ValorJugador", ValorJugador);
                session.setAttribute("CartasJugador", CartasJugador);
                }
            } else { 
            ValorJugador+=(Integer)((mazo.getCarta()).getNumeroAsInt()==0?10:(mazo.getCarta()).getNumeroAsInt());
                CartasJugador.add(mazo.extrae());
                session.setAttribute("ValorJugador", ValorJugador);
                session.setAttribute("CartasJugador", CartasJugador);
            }
        }
            
    %>

    
    
    <%
    
    if (plantarse) { 
    %>
                <div class="cartas">
                <% do {
                    ValorCPU+=(int)((mazo.getCarta()).getNumeroAsInt()==0?10:(mazo.getCarta()).getNumeroAsInt());
                    out.print(new CartaTemplate(mazo.extrae()));
                } while (ValorCPU < 17 || ValorCPU < ValorJugador); %>
                </div>
            <% } else { %>
                <div class="cartaReverso">
                <img src="assets/img/reverso.png">
                <img src="assets/img/reverso.png">
                </div>
            <% } %>
    
    <div class="valor">
    <% out.print((ValorCPU==21)?"Blackjack":ValorCPU); %>
    </div>

    <div class="cartaReverso">
        <img src="assets/img/reverso.png">
    </div>

    <div class="valor">
    <% out.print((ValorJugador==21)?"Blackjack":ValorJugador); %>
    </div>


<% if (CartasJugador.isEmpty()) { %>
    <div class="cartaReverso">
        <img src="assets/img/reverso.png">
        <img src="assets/img/reverso.png">
    </div>
<% } else { %>
    <div class="cartas">
        <%
            for(Carta cartas : CartasJugador) {
                out.print(new CartaTemplate(cartas));
            }
        %>
    </div>
    <% } %>
        
        <div class="buttons">
        <% if (!plantarse && ValorJugador<=21) { %>
        <form method="POST" action="Game.jsp">
            <input type="hidden" name="pedir" value="true">
            <button type="submit">Pedir carta</button>
        </form>
        <% if (ValorJugador!=0) { %>
        <form method="POST" action="Game.jsp">
            <input type="hidden" name="plantarse" value="true">    
            <button type="submit">Plantarse</button>
        </form>
        <% } }%> 
        
        <form method="POST" action="home.jsp">
            <input type="hidden" name="reiniciar" value="true">   
            <button type="submit">Reiniciar</button>
        </form>
    </div>

<% if (plantarse || ValorJugador > 21) { %>
    <div class="valor">
        <% 
            String redirectURL = "";
            if ((ValorJugador <= 21 && ValorJugador > ValorCPU) || ValorCPU > 21) {
                redirectURL = "findejuego.jsp?winner=1&valorJugador=" + ValorJugador + "&valorCPU=" + ValorCPU;
            } else if (ValorJugador == ValorCPU) {
                redirectURL = "playAgain.jsp?winner=3&valorJugador=" + ValorJugador + "&valorCPU=" + ValorCPU;
            } else {
                redirectURL = "findejuego.jsp?winner=2&valorJugador=" + ValorJugador + "&valorCPU=" + ValorCPU;
            }
            response.sendRedirect(redirectURL);
        %>
    </div>
<% } %> 


    
    
    <!-- Bootstrap JavaScript y dependencias -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>