package players;

public class Player {
    private long id;
    private String name;
    private String surname;
    private String playername;
    private long wins;
    private long loses;


    public Player(long id, String name, String surname, String playername, long wins, long loses){
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.playername = playername;
        this.wins = wins;
        this.loses = loses;
    }

    public Player(long id, String name, String surname, String playername){
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.playername = playername;
    }

    public long getId() {
        return id;
    }
    
    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getPlayername() {
        return playername;
    }

    public long getWins() {
      return wins;
    }
    
    public void setWins(long wins) {
      this.wins = wins;
    }

    public void setLoses(long loses) {
      this.loses = loses;
    }

    public long getLoses() {
      return loses;
    }

    @Override
    public String toString() {
        return String.format("%s %s (%s)",getName(), getSurname(), getPlayername());
    }
    
}
