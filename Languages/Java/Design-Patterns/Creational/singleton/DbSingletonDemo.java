package singleton;

public class DbSingletonDemo {
    public static void main(String[] args) {
        // A singleton of DbSingleton Class
        DbSingleton instance = DbSingleton.getInstance();
        System.out.println(instance);

        // The same instance as above
        DbSingleton anotherInstance = DbSingleton.getInstance();
        System.out.println(anotherInstance);
 
    }
}
