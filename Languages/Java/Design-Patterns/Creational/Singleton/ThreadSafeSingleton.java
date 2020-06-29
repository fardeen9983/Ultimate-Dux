package singleton;

public class ThreadSafeSingleton {

    // Thread safe singleton
    private static volatile ThreadSafeSingleton instance = null;

    // Reflections safe Private constructor
    private ThreadSafeSingleton() {
        if (instance != null)
            throw new RuntimeException("Use getInstance method to create instance");
    }

    // Singleton accessor
    public static ThreadSafeSingleton getInstance() {
        if (instance == null) {
            synchronized (ThreadSafeSingleton.class) {
                if (instance == null)
                    instance = new ThreadSafeSingleton();
            }
        }
        return instance;
    }
}