package singleton;

// Example of Lazily Loaded singleton
public class LazyLoadedSingleton {

    // private instance (singleton)
    // Null by default. Thus loaded lazily when needed
    private static LazyLoadedSingleton instance = null;

    // Private constructor
    private LazyLoadedSingleton(){}

    // Lazily loaded accessor
    public static LazyLoadedSingleton getInstance() {
        // Create the instance if null
        if(instance == null)
            instance = new LazyLoadedSingleton();
        return instance;
    }

}