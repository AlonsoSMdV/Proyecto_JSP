<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="views.HomeView"%>
<%@page import="connectionpool.ConnectionPool"%>
<%@page import="users.UsersService"%>
<%@page import="users.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="views.HeaderView"%>
<%@page import="views.MenuView"%>
<%@page import="views.MainView"%>
<%@page import="views.FooterView"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
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
        ConnectionPool pool = new ConnectionPool("jdbc:mysql://localhost:3306/users2", dbuser, dbpassword);
        UsersService userSvc = new UsersService(pool.getConnection());
        ArrayList<User> users = userSvc.requestAll("id ASC");
        User user = (User)session.getAttribute("user");
        if(user==null){
            response.sendRedirect("login.jsp");
        }
         else{
    %>
     <!-- Inicio del contenido HTML -->
<div class="min-vh-100 d-flex flex-column">
    <%= new HeaderView(user) %>
    <div class="flex-grow-wrapper">
        <div class="row border-right border-white">
            <%= new MenuView(user) %>
            <%= new MainView(user) %>
        </div>
        <div class="row m-4">
            <h2 style="color: white;">Listado de usuarios</h2>
            <div class="table-responsive " style="height: calc(100vh - 200px);">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col" style="color: white;">#</th>
                            <th scope="col" style="color: white;">Nombre</th>
                            <th scope="col" style="color: white;">Apellidos</th>
                            <th scope="col" style="color: white;">Nombre de usuario</th>
                        </tr>
                    </thead>
                    <tbody style="overflow-y: auto;">
                        <% 
                            for(int i = 0; i < users.size(); i++) {
                                User currentUser = users.get(i);
                        %>
                        <tr>
                            <td style="color: white;"><%= currentUser.getId() %></td>
                            <td style="color: white;"><%= currentUser.getName() %></td>
                            <td style="color: white;"><%= currentUser.getSurname() %></td>
                            <td style="color: white;"><%= currentUser.getUsername() %></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<%
    }
%>
    <!-- Bootstrap JavaScript y dependencias -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>