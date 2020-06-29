package singleton;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// A full fledged example of a singleton pattern showing use case with Derby lib for Database connection
public class DerbySingleton {

    // Private singletons
    private static volatile DerbySingleton instance = null;
    private static volatile Connection conn = null;
    // Private constructor 
    private DerbySingleton(){
        try {
            DriverManager.registerDriver(new org.apache.derby.jdbc.EmbeddedDriver());

        } catch (SQLException e) {
            e.printStackTrace();
        }

        if(conn!=null){
            throw new RuntimeException("Use getConnection() to instanstiate connection");
        }

        if(instance!=null){
            throw new RuntimeException("Use getInstance() to create singleton");
        }
    }

    // Public accessor
    public static DerbySingleton getInstance() {
        if (instance == null) {
            synchronized (ThreadSafeSingleton.class) {
                if (instance == null)
                    instance = new DerbySingleton();
            }
        }
        return instance;
    }

    // Public method to fetch DB connection using singleton
    public Connection getConnection() {
        if(conn == null){
            synchronized(DerbySingleton.class){
                if(conn==null){
                    try {
                        String dbURL = "jdbc:derby:memory:codejava/webdb;create=true";
                        conn = DriverManager.getConnection(dbURL);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        }        
        return conn;
    }
}