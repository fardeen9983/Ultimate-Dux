package factory;

// A concrete Website
public class Blog extends Website {

    @Override
    public void createWebsite() {

        // Add default pages to the Blog
        pages.add(new PostPage());
        pages.add(new CartPage());
        pages.add(new AboutPage());
    }
}