/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2024-05-20 07:19:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import connectionpool.ConnectionPool;
import players.PlayersService;
import players.Player;
import Cartas.*;
import java.util.ArrayList;

public final class Game_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"es\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Blackjack</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/estilo.css\">\r\n");
      out.write("    <!-- Enlace a Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\r\n");
      out.write("    <style>\r\n");
      out.write("    body{\r\n");
      out.write("          width: auto;\r\n");
      out.write("          background-size: cover;\r\n");
      out.write("          background-image: url(\"assets/img/tapete.jpg\");\r\n");
      out.write("          position: relative;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("    .cartaReverso{\r\n");
      out.write("        padding:30px;\r\n");
      out.write("        display:flex;\r\n");
      out.write("        align-items: center;\r\n");
      out.write("        justify-content: center;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .cartaReverso img {\r\n");
      out.write("        width:5%;\r\n");
      out.write("        height: auto;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .buttons{\r\n");
      out.write("        display: flex;\r\n");
      out.write("        align-items: center;\r\n");
      out.write("        justify-content: center;\r\n");
      out.write("        padding-bottom: 3%;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    .cartas{\r\n");
      out.write("        padding: 15px 0px 15px 0px;\r\n");
      out.write("        display:flex;\r\n");
      out.write("        align-items: center;\r\n");
      out.write("        justify-content: center;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .cartas img {\r\n");
      out.write("        width: 45%;\r\n");
      out.write("        height: auto;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .valor{\r\n");
      out.write("        font-size: 1.5rem;\r\n");
      out.write("        text-align: center;\r\n");
      out.write("    }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    ");




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
            
    
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    ");

    
    if (plantarse) { 
    
      out.write("\r\n");
      out.write("                <div class=\"cartas\">\r\n");
      out.write("                ");
 do {
                    ValorCPU+=(int)((mazo.getCarta()).getNumeroAsInt()==0?10:(mazo.getCarta()).getNumeroAsInt());
                    out.print(new CartaTemplate(mazo.extrae()));
                } while (ValorCPU < 17 || ValorCPU < ValorJugador); 
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            ");
 } else { 
      out.write("\r\n");
      out.write("                <div class=\"cartaReverso\">\r\n");
      out.write("                <img src=\"assets/img/reverso.png\">\r\n");
      out.write("                <img src=\"assets/img/reverso.png\">\r\n");
      out.write("                </div>\r\n");
      out.write("            ");
 } 
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"valor\">\r\n");
      out.write("    ");
 out.print((ValorCPU==21)?"Blackjack":ValorCPU); 
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"cartaReverso\">\r\n");
      out.write("        <img src=\"assets/img/reverso.png\">\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"valor\">\r\n");
      out.write("    ");
 out.print((ValorJugador==21)?"Blackjack":ValorJugador); 
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
 if (CartasJugador.isEmpty()) { 
      out.write("\r\n");
      out.write("    <div class=\"cartaReverso\">\r\n");
      out.write("        <img src=\"assets/img/reverso.png\">\r\n");
      out.write("        <img src=\"assets/img/reverso.png\">\r\n");
      out.write("    </div>\r\n");
 } else { 
      out.write("\r\n");
      out.write("    <div class=\"cartas\">\r\n");
      out.write("        ");

            for(Carta cartas : CartasJugador) {
                out.print(new CartaTemplate(cartas));
            }
        
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("    ");
 } 
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"buttons\">\r\n");
      out.write("        ");
 if (!plantarse && ValorJugador<=21) { 
      out.write("\r\n");
      out.write("        <form method=\"POST\" action=\"Game.jsp\">\r\n");
      out.write("            <input type=\"hidden\" name=\"pedir\" value=\"true\">\r\n");
      out.write("            <button type=\"submit\">Pedir carta</button>\r\n");
      out.write("        </form>\r\n");
      out.write("        ");
 if (ValorJugador!=0) { 
      out.write("\r\n");
      out.write("        <form method=\"POST\" action=\"Game.jsp\">\r\n");
      out.write("            <input type=\"hidden\" name=\"plantarse\" value=\"true\">    \r\n");
      out.write("            <button type=\"submit\">Plantarse</button>\r\n");
      out.write("        </form>\r\n");
      out.write("        ");
 } }
      out.write(" \r\n");
      out.write("        \r\n");
      out.write("        <form method=\"POST\" action=\"home.jsp\">\r\n");
      out.write("            <input type=\"hidden\" name=\"reiniciar\" value=\"true\">   \r\n");
      out.write("            <button type=\"submit\">Reiniciar</button>\r\n");
      out.write("        </form>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
 if (plantarse || ValorJugador > 21) { 
      out.write("\r\n");
      out.write("    <div class=\"valor\">\r\n");
      out.write("        ");
 
            String redirectURL = "";
            if ((ValorJugador <= 21 && ValorJugador > ValorCPU) || ValorCPU > 21) {
                redirectURL = "findejuego.jsp?winner=1&valorJugador=" + ValorJugador + "&valorCPU=" + ValorCPU;
            } else if (ValorJugador == ValorCPU) {
                redirectURL = "playAgain.jsp?winner=3&valorJugador=" + ValorJugador + "&valorCPU=" + ValorCPU;
            } else {
                redirectURL = "findejuego.jsp?winner=2&valorJugador=" + ValorJugador + "&valorCPU=" + ValorCPU;
            }
            response.sendRedirect(redirectURL);
        
      out.write("\r\n");
      out.write("    </div>\r\n");
 } 
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <!-- Bootstrap JavaScript y dependencias -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\r\n");
      out.write("</body>\r\n");
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
