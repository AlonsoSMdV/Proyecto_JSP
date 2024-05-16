<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="connectionpool.ConnectionPool"%>
<%@page import="players.AuthService"%>
<%@page import="players.Player"%>
<%
    String playername = request.getParameter("playername");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String surname = request.getParameter("surname");
    //Usuario de la base de datos
    String dbuser = "juan";
    //Contraseña de la base de datos
    String dbpassword = "12345678";
    //Pool de conexiones a la base de datos
    ConnectionPool pool = new ConnectionPool("jdbc:mysql://localhost:3306/blackjack", dbuser, dbpassword);
    AuthService auth = new AuthService(pool.getConnection());
    Player player = auth.register(name, surname, playername, password);
    response.sendRedirect("index.jsp");
%>