/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2024-05-19 14:34:40 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import views.HomeView;
import connectionpool.ConnectionPool;
import players.PlayersService;
import players.Player;
import java.util.ArrayList;
import views.HeaderView;
import views.MenuView;
import views.MainView;
import views.FooterView;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Login</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/estilo.css\">\n");
      out.write("    <!-- Enlace a Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("     <style>\n");
      out.write("        /* Estilos para los iconos */\n");
      out.write("        svg {\n");
      out.write("            fill: currentColor;\n");
      out.write("            width: 1em;\n");
      out.write("            height: 1em;\n");
      out.write("            vertical-align: -0.125em;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        body{\n");
      out.write("          width: auto;\n");
      out.write("          background-size: cover;\n");
      out.write("          background-image: url(\"assets/img/BlackjackBack.jpg\");\n");
      out.write("          position: relative;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

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
    
      out.write("\n");
      out.write("     <!-- Inicio del contenido HTML -->\n");
      out.write("\n");
      out.write("<div class=\"min-vh-100 d-flex flex-column\">\n");
      out.write("    <nav class=\" navbar navbar-expand-lg border-bottom border-white bg-dark\">\n");
      out.write("           <a class=\"navbar-brand\" href=\"#\">Usuario</a>\n");
      out.write("            <div class=\"collapse navbar-collapse justify-content-end\">\n");
      out.write("                <ul class=\"navbar-nav\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"my-profile.jsp\">");
 if(player!=null) out.print(player.getPlayername());
      out.write("</a>\n");
      out.write("                   </li>\n");
      out.write("               </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    \n");
      out.write("    <div class=\"flex-grow-wrapper\">\n");
      out.write("        <div class=\"row mr-3 border-right border-white bg-dark\">\n");
      out.write("            <div class=\"offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto\">\n");
      out.write("          <ul class=\"nav flex-column\">\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link d-flex align-items-center gap-2 active ml-2\" aria-current=\"page\" href=\"home.jsp\">\n");
      out.write("                Inicio\n");
      out.write("              </a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("          <hr class=\"my-3\">\n");
      out.write("          <ul class=\"nav flex-column mb-auto\">\n");
      out.write("            \n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link d-flex align-items-center ml-2\" href=\"Instructions.jsp\">\n");
      out.write("                Instrucciones\n");
      out.write("              </a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link d-flex align-items-center gap-2 ml-2\" href=\"my-profile.jsp\">\n");
      out.write("                Mi perfil\n");
      out.write("              </a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link d-flex align-items-center ml-2\" href=\"logout.jsp\">\n");
      out.write("                Cerrar sesión\n");
      out.write("              </a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("          <div class=\"row w-auto h-auto p-4\">\n");
      out.write("            <h2 style=\"color: white;\">Listado de usuarios</h2>\n");
      out.write("            <div class=\"table-responsive \" style=\"height: calc(100vh - 300px);\">\n");
      out.write("                <table class=\"table table-striped \">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th scope=\"col\" style=\"color: white;\">#</th>\n");
      out.write("                            <th scope=\"col\" style=\"color: white;\">Nombre</th>\n");
      out.write("                            <th scope=\"col\" style=\"color: white;\">Apellidos</th>\n");
      out.write("                            <th scope=\"col\" style=\"color: white;\">Nombre de usuario</th>\n");
      out.write("                            <th scope=\"col\" style=\"color: white;\">Victorias</th>\n");
      out.write("                            <th scope=\"col\" style=\"color: white;\">Derrotas</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody style=\"overflow-y: auto;\">\n");
      out.write("                        ");
 
                            for(int i = 0; i < players.size(); i++) {
                                Player playerActual = players.get(i);
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"color: white;\">");
      out.print( playerActual.getId() );
      out.write("</td>\n");
      out.write("                            <td style=\"color: white;\">");
      out.print( playerActual.getName() );
      out.write("</td>\n");
      out.write("                            <td style=\"color: white;\">");
      out.print( playerActual.getSurname() );
      out.write("</td>\n");
      out.write("                            <td style=\"color: white;\">");
      out.print( playerActual.getPlayername() );
      out.write("</td>\n");
      out.write("                            <td style=\"color: white;\">");
      out.print( playerActual.getWins() );
      out.write("</td>\n");
      out.write("                            <td style=\"color: white;\">");
      out.print( playerActual.getLoses() );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("</div>\n");

    }

      out.write("\n");
      out.write("    <!-- Bootstrap JavaScript y dependencias -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}