package singleton;

// A full fledged example of a singleton pattern showing use case with Derby lib for Database connection
public class DerbySingleton {

    // Private singleton
    private static volatile DerbySingleton instance = null;

    // Private constructor 
    private DerbySingleton(){
        
    }

    // Public accessor
    public static DerbySingleton getInstance() {
        if (instance == null) {
            synchronized (ThreadSafeSingleton.class) {
                if (instance == null)
                    instance = new DerbySingleton();
            }
        }
        return instance;
    }
}