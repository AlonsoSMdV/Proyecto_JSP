package views;

import players.Player;

public class FooterView {
    Player player = null;

    public FooterView(Player user){
        this.player = user;
    }


    @Override
    public String toString() {
        return 
        "<footer class=\"bg-light text-center text-lg-start\">"+
        "    <div class=\"text-center p-3\" style=\"background-color: rgba(0, 0, 0, 0.2);\">"+
        "        © 2024 Derechos Reservados: <a class=\"text-dark\" href=\"#\">Usuarios.com</a>"+
        "    </div>"+
        "</footer>";
    }
    
}
