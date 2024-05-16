package views;

import players.Player;

public class HomeView {
    Player player = null;

    public HomeView(Player user){
        this.player = user;
    }


    @Override
    public String toString() {
        return 
            "<div class=\"min-vh-100 d-flex flex-column\">"+
                (new HeaderView(player))+
            "   <div class=\"flex-grow-wrapper\">"+
            "       <div class=\"row\">"+
                      (new MenuView(player))+
                      (new MainView(player))+
            "       </div>"+
            "   </div>"+
                (new FooterView(player))+
            "</div>";
    }
    
}
