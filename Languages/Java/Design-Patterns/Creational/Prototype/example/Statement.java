package prototype.example;

import java.util.List;

public class Statement implements Cloneable{
    // Mutable members   
    private String sql;
    private List<String> parameters;
    // User defined class
    private Record record;

    // Normal constructor used with "new" 
    public Statement(String sql,List<String> parameters, Record record){
        this.sql = sql;
        this.parameters = parameters;
        this.record = record;
    }

    // Less expensive clone function to obtain class instance
    public Statement  clone(){
        /* 
        *  Directly try to create a new Object instance using Object#clone() method
        *  The new Object is type casted to the Given class Type
        */
        try{
            return (Statement) super.clone();
        } catch(CloneNotSupportedException e){
            e.printStackTrace();
        }
        return null;
    }

    /**
     * @return the parameters
     */
    public List<String> getParameters() {
        return parameters;
    }

    /**
     * @return the sql
     */
    public String getSql() {
        return sql;
    }

    /**
     * @return the record
     */
    public Record getRecord() {
        return record;
    }
}