<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="connectionpool.ConnectionPool"%>
<%@page import="players.AuthService"%>
<%@page import="players.Player"%>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>