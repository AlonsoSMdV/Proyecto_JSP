<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="connectionpool.ConnectionPool"%>
<%@page import="players.PlayersService"%>
<%@page import="players.Player"%>
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
        /* Estilos para los iconos */
        svg {
            fill: currentColor;
            width: 1em;
            height: 1em;
            vertical-align: -0.125em;
        }

        body{
          width: auto;
          background-size: cover;
          background-image: url("assets/img/BlackjackBack.jpg");
          position: relative;
        }
    </style>
</head>
<body>
    <%
        String error = request.getParameter("error");
        //Usuario de la base de datos
        String dbuser = "juan";
        //Contraseña de la base de datos
        String dbpassword = "12345678";
        //Pool de conexiones a la base de datos
        ConnectionPool pool = new ConnectionPool("jdbc:mysql://localhost:3306/blackjack", dbuser, dbpassword);
        PlayersService playerSvc = new PlayersService(pool.getConnection());
        ArrayList<Player> players = playerSvc.requestAll("id ASC");
        Player player = (Player)session.getAttribute("player");
        if(player==null){
            response.sendRedirect("login.jsp");
        }
         else{
    %>
     <!-- Inicio del contenido HTML -->

<div class="min-vh-100 d-flex flex-column">
    <nav class=" navbar navbar-expand-lg border-bottom border-white bg-dark">
           <a class="navbar-brand" href="#">Usuario</a>
            <div class="collapse navbar-collapse justify-content-end">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="my-profile.jsp"><% if(player!=null) out.print(player.getPlayername());%></a>
                   </li>
               </ul>
            </div>
        </nav>
    
    <div class="flex-grow-wrapper">
        <div class="row mr-3 border-right border-white bg-dark">
            <div class="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center gap-2 active ml-2" aria-current="page" href="home.jsp">
                Inicio
              </a>
            </li>
          </ul>
          <hr class="my-3">
          <ul class="nav flex-column mb-auto">
            
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center ml-2" href="Instructions.jsp">
                Instrucciones
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center gap-2 ml-2" href="my-profile.jsp">
                Mi perfil
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link d-flex align-items-center ml-2" href="logout.jsp">
                Cerrar sesión
              </a>
            </li>
          </ul>
        </div>
        </div>
        
          <div class="row w-auto h-auto">
            <div class="p-4 m-2">
            <h2 style="color: white;">Perfil</h2>
              <div class="login-form transparent mt-4 p-4 text-white">
                    <form action="actualiza.jsp" method="POST" class="row g-3">
                          <div class="col-12">
                            <label>Nombre</label>
                            <input type="text" name="name" class="form-control bg-transparent text-white" value="<% if(player!=null) out.print(player.getName());%>" placeholder="Nombre" required>
                          </div>
                          <div class="col-12">
                            <label>Apellidos</label>
                            <input type="text" name="surname" class="form-control bg-transparent text-white" value="<% if(player!=null) out.print(player.getSurname());%>" placeholder="Apellidos" required>
                          </div>
                          <div class="col-12">
                            <label>Usuario</label>
                            <input type="text" name="playername" class="form-control bg-transparent text-white" value="<% if(player!=null) out.print(player.getPlayername());%>" placeholder="Usuario" required>
                          </div>
                            <%
                            if (error!=null && error.length()!=0)
                              out.print(String.format("<h4 class=\"error\">%s</h4>",error));
                            %>
                          <div class="col-12 p-3">
                            <button type="submit" class="btn btn-light float-end">Actualiza</button>
                          </div>
                    </form>
                </div>
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