package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

    Connection conn = null;

    public Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/fandow","root","");
           // conn = DriverManager.getConnection("jdbc:mysql://localhost/fandom","root","root");
        }
        catch (ClassNotFoundException | SQLException e) {
            System.out.println("connection error : "+e.getMessage());
            return null;
        }

        return conn;

    }
}
