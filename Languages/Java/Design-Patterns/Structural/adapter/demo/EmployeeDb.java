package adapter.demo;

public class EmployeeDb implements Employee {
    public String id;
    public String name;
    public String email;

    public EmployeeDb(String id, String name, String email) {
        this.email = email;
        this.id = id;
        this.name = name;
    }

    /**
     * @return the email
     */
    @Override
    public String getEmail() {
        return email;
    }

    /**
     * @return the id
     */
    @Override
    public String getId() {
        return id;
    }

    /**
     * @return the name
     */
    @Override
    public String getName() {
        return name;
    }

}