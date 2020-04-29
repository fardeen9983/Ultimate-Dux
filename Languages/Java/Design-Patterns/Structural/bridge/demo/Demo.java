package bridge.demo;

public class Demo {

    public static void main(String[] args) {
        Movie movie = new Movie();
        movie.setClassification("Action");
        movie.setRuntime("2 hours");
        movie.setTitle("Terminator");
        movie.setYear("2001");

        Formatter printFormatter = new PrintFormatter();
        Printer moviePrinter = new MoviePrinter(movie);

        String moviePrint = moviePrinter.print(printFormatter);
        System.out.println(moviePrint);
    }
}
