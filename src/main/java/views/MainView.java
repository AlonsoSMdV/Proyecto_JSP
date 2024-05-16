package views;

import players.Player;

public class MainView {
    Player player = null;

    public MainView(Player user){
        this.player = user;
    }


    @Override
    public String toString() {
        return 
        "<div class=\"col\">"+
        "</div>";
    }
    
}
