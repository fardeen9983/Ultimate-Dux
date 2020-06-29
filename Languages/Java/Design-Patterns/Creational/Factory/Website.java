package factory;

import java.util.ArrayList;
import java.util.List;

// Represents a website holding many pages
public abstract class Website {

    // List of pages in the website
    protected List<Page> pages = new ArrayList<>();

    // Default constructor
    public Website(){
        this.createWebsite();
    }

    /**
     * @return the pages
     */
    public List<Page> getPages() {
        return pages;
    }


    // abstract method to create the website
    public abstract void createWebsite();
}