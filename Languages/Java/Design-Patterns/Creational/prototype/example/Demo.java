package prototype.example;

import java.util.ArrayList;
import java.util.List;

public class Demo {
    public static void main(String[] args) {
        // SQL query
        String sql = "SELECT * FROM movies WHERE title = ?";
        // List to hold all parameters
        List<String> params = new ArrayList<>();
        params.add("Terminator");
        // Record object
        Record record = new Record();

        // Create a statement
        Statement statement = new Statement(sql, params, record);

        // Print out properties
        System.out.println(statement.getSql());
        System.out.println(statement.getParameters());
        System.out.println(statement.getRecord());
    
        // Create a clone of the first Statement
        Statement clone = statement.clone();
        
        // Print out properties
        System.out.println(statement.getSql());
        System.out.println(clone.getParameters());
        System.out.println(clone.getRecord());
    }
}