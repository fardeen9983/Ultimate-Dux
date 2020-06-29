package adapter;

public class EmployeeCSVAdapter implements Employee {

    private EmployeeCSV instance;

    public EmployeeCSVAdapter(EmployeeCSV instance) {
        this.instance = instance;
    }

    @Override
    public String getId() {
        return instance.getId()+"";
    }

    @Override
    public String getName() {
        return instance.getFullName();
    }

    @Override
    public String getEmail() {
        return instance.getEmailAdress();
    }

}
