package players;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import crud.CRUD;

public class PlayersService implements CRUD<Player>{

    Connection conn;
    public PlayersService(Connection conn){
        this.conn = conn;
    }
    @Override
    public ArrayList<Player> query(String column, String value) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'query'");
    }

    @Override
    public ArrayList<Player> query(String column, long value) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'query'");
    }

    private ArrayList<Player> _requestAll(String sql) throws SQLException{
        //Creamos el array que vamos a devolver
        ArrayList<Player> result = new ArrayList<Player>();
        //Construimos la consulta a realizar
        Statement statement = this.conn.createStatement();   

        // Ejectuamos la consulta
        ResultSet querySet = statement.executeQuery(sql);
        // Recorremos cada uno de los registro devueltos por la consulta
        while(querySet.next()) {
            //Obtenemos los datos del Individuo
            int id = querySet.getInt("id");
            String name = querySet.getString("name");
            String surname = querySet.getString("surname");
            String playername = querySet.getString("playername");
            int wins = querySet.getInt("wins");
            int loses = querySet.getInt("loses");
            result.add(new Player(id, name, surname, playername,wins,loses));
        } 
        //Cerramos la consulta
        statement.close();

        //Devolvemos el array de individuoes
        return result;
    }

    @Override
    public ArrayList<Player> requestAll(String sortedBy) throws SQLException{
        String sql = "SELECT id, name, surname, playername, wins, loses FROM player"+(sortedBy.length()>0?(" ORDER BY "+sortedBy):"");
        return this._requestAll(sql);
    }

    @Override
    public Player requestById(long id) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'requestById'");
    }

    @Override
    public long create(Player model) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'create'");
    }

    @Override
    public int update(Player object) throws SQLException {
        long id = object.getId();
        String name = object.getName();
        String surname = object.getSurname();
        String playername = object.getPlayername();
        Statement statement = this.conn.createStatement(); 

        String sql = String.format("UPDATE player SET name = '%s', surname = '%s', playername = '%s'  WHERE id=%d", name, surname, playername, id);
        int affectedRows = statement.executeUpdate(sql);
        statement.close();
        if (affectedRows == 0)
            throw new SQLException("Creating user failed, no rows affected.");
        else
            return affectedRows;
    }

    @Override
    public int updateWinsAndLoses(Player object) throws SQLException {
        long id = object.getId();
        long wins = object.getWins();
        long loses = object.getLoses();
        Statement statement = this.conn.createStatement(); 

        String sql = String.format("UPDATE player SET wins = %d , loses = %d WHERE id=%d", wins, loses, id);
        int affectedRows = statement.executeUpdate(sql);
        statement.close();
        if (affectedRows == 0)
        throw new SQLException("Creating user failed, no rows affected.");
        else
        return affectedRows;
    }

    @Override
    public boolean delete(long id) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'delete'");
    }

    
    
}
