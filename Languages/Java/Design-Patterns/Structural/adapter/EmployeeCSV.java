package adapter;

import java.util.StringTokenizer;

public class EmployeeCSV {
    public int id;
    public String fullName;
    public String emailAdress;

    public EmployeeCSV(String values) {
        StringTokenizer tokenizer = new StringTokenizer(values, ",");
        if (tokenizer.hasMoreTokens()) {
            id = Integer.parseInt(tokenizer.nextToken());
        }
        if (tokenizer.hasMoreTokens()) {
            fullName = tokenizer.nextToken();
        }
        if (tokenizer.hasMoreTokens()) {
            emailAdress = tokenizer.nextToken();
        }
    }

    /**
     * @return the emailAdress
     */
    public String getEmailAdress() {
        return emailAdress;
    }

    /**
     * @return the fullName
     */
    public String getFullName() {
        return fullName;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

}