package adapter;

import java.util.ArrayList;
import java.util.List;

public class EmployeeClient {

	public List<Employee> getEmployeeList() {
        List<Employee> employees = new ArrayList<>();
        Employee employee = new EmployeeDb("12", "Ultimate-Dux", "xyz@gamil.com");
        employees.add(employee);

        // As of now we cannot create an object of EmployeeLdap and assign it to Employee reference
        EmployeeLdap employeeLdap = new EmployeeLdap("12", "Ultimate-Dux", "xyz@gamil.com");
        // Thus we create a custom adapter to deal with this
        employees.add(new EmployeeLdapAdapter(employeeLdap));

        EmployeeCSV employeeCSV = new EmployeeCSV("52,Fardeen K,abc@gmail.com");
        // Again a different adapter for conforming EmployeeCSV to Employee
        employees.add(new EmployeeCSVAdapter(employeeCSV));

        return employees;
	}

}
