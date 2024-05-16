<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="connectionpool.ConnectionPool"%>
<%@page import="users.AuthService"%>
<%@page import="users.User"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String surname = request.getParameter("surname");
    //Usuario de la base de datos
    String dbuser = "juan";
    //Contraseña de la base de datos
    String dbpassword = "12345678";
    //Pool de conexiones a la base de datos
    ConnectionPool pool = new ConnectionPool("jdbc:mysql://localhost:3306/users2", dbuser, dbpassword);
    AuthService auth = new AuthService(pool.getConnection());
    User user = auth.register(name, surname, username, password);
    response.sendRedirect("login.jsp");
%>