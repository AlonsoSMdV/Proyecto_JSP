package views;

import players.Player;

public class MenuView {
    Player player = null;

    public MenuView(Player user){
        this.player = user;
    }


    @Override
    public String toString() {
        return """
        <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
            <symbol id="house"  viewBox="0 0 8 8">
                <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
                <path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293z"/>
            </symbol>
        </svg>
        """+
        "<div class=\"menu-lateral\">"+
        "    <ul class=\"nav flex-column text-white\">"+
        "        <li class=\"nav-item\">"+
        "            <a class=\"nav-link text-white\" href=\"home.jsp\">"+
        "               <svg class=\"bi\"><use xlink:href=\"#house\"/></svg>"+
        "               Inicio"+
        "            </a>"+
        "        </li>"+
        "        <li class=\"nav-item\">"+
        "            <a class=\"nav-link text-white\" href=\"home.jsp\">Mi perfil</a>"+
        "        </li>"+
        "        <li class=\"nav-item\">"+
        "            <a class=\"nav-link text-white\" href=\"home.jsp\">Juego</a>"+
        "        </li>"+
        "        <li class=\"nav-item\">"+
        "            <a class=\"nav-link text-white\" href=\"logout.jsp\">Cerrar sesión</a>"+
        "        </li>"+
        "    </ul>"+
        "</div>";
    }
    
}
