package adapter;

import java.util.List;

/**
 * Demo
 */
public class Demo {

    public static void main(final String[] args) {
        // Legacy code
        final EmployeeClient client = new EmployeeClient();

        // Adapter result
        final List<Employee> employees = client.getEmployeeList();

        System.out.println(employees);

    }
}