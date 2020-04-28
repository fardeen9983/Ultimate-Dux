package singleton;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

// Demo for DerbySingleton class
public class DerbyDemo {
    public static void main(String[] args) {
        // singleton
        DerbySingleton instance = DerbySingleton.getInstance();

        // Keep track of time taken to create an instance
        long timeBefore = 0, timeAfter = 0;

        timeBefore = System.currentTimeMillis();
        // Get a Derby db connection
        Connection conn = instance.getConnection();
        timeAfter = System.currentTimeMillis();

        // Time taken to create connection
        System.out.println("Time taken to create connection : " + (timeAfter - timeBefore));

        // SQL statement
        Statement statement;
        try {
            statement = conn.createStatement();
            int count = statement.executeUpdate("CREATE TABLE Student(id number,Name varchar2(40)");
            System.out.println("Table created");
            statement.close();
            instance.getConnection().close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        timeBefore = System.currentTimeMillis();
        // Get a Derby db connection
        conn = instance.getConnection();
        timeAfter = System.currentTimeMillis();

        // Time taken to create connection
        System.out.println("Time taken to get connection instance: " + (timeAfter - timeBefore));

    }
}