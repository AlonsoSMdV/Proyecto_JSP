package players;

import java.sql.SQLException;

public interface AuthInterface {
    public Player login(String username, String password) throws SQLException;
    public void logout() throws SQLException;
    public Player register(String playername, String name, String surname, String password) throws SQLException;
}
