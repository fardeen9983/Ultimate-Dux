package prototype.registery;

import java.util.HashMap;
import java.util.Map;

// Main class in Prototype pattern
public class Registry {

    // A registry to maintain original constructions of the Item class
    private Map<String,Item> items = new HashMap<>();

    // Constructor to automatically fill the registry with default Items on creation
    public Registry(){
        loadItems();
    }

    // Main method of registry responsible for creating unique instances
    public Item createItem(String type) {
        Item item = null;
        try {
            item = (Item)(items.get(type)).clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }
        return item;
    }

    // Populates the Registery with default items
    private void loadItems() {
        Movie movie = new Movie();
        movie.setTitle("Terminator");
        movie.setPrice(24.99);
        movie.setRuntime("2 hours");
        items.put("Movie", movie);

        Book book = new Book();
        book.setTitle("Diary of a Whimpy Kid");
        book.setPrice(8.99);
        book.setNumberOfPages(204);
        items.put("Book", book);
    }
}