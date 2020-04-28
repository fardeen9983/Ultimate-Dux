package prototype.registery;

public class Demo {
    public static void main(String[] args) {
        // Create a Registry with preloaded Item objects
        Registry registry = new Registry();

        // Create a Movie object using Registry clone
        Movie movie = (Movie) registry.createItem("Movie");
        movie.setTitle("Dumb and Dumber");

        // Movie details
        System.out.println(movie);
        System.out.println(movie.getTitle());
        System.out.println(movie.getRuntime());
        System.err.println(movie.getUrl());

        // Create another mOview
        Movie another = (Movie) registry.createItem("Movie");
        movie.setTitle("Conan the Barbarian");
        
        // Another movie details
        System.out.println(another);
        System.out.println(another.getTitle());
        System.out.println(another.getRuntime());
        System.err.println(another.getUrl());

    }

}