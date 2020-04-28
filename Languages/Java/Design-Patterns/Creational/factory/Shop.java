package factory;

public class Shop  extends Website{
    @Override
    public void createWebsite() {

        // Add default pages to the Blog
        pages.add(new PostPage());
        pages.add(new CartPage());
        pages.add(new AboutPage());
    }
}