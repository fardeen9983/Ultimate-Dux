package singleton;

// Class you wish to apply the singleton pattern on 
public class DbSingleton{

    // A private static instance of the class (The singleton)
    private static DbSingleton instance = new DbSingleton();

    // Private constructor to be used only for the singleton
    private DbSingleton(){}

    // Public method to access the singleton
    public static DbSingleton getInstance() {
        return instance;
    }
}