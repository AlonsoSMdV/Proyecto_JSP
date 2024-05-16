package views;

import players.Player;

public class HeaderView {
    Player player = null;

    public HeaderView(Player user){
        this.player = user;
    }


    @Override
    public String toString() {
        return 
        "<nav class=\"navbar navbar-expand-lg border-bottom border-white\">"+
        "    <a class=\"navbar-brand\" href=\"#\">Usuario</a>"+
        "    <div class=\"collapse navbar-collapse justify-content-end\">"+
        "        <ul class=\"navbar-nav\">"+
        "            <li class=\"nav-item\">"+
        "                <a class=\"nav-link\" href=\"#\">"+player.getPlayername()+"</a>"+
        "            </li>"+
        "       </ul>"+
        "    </div>"+
        "</nav>";
    }
    
}
