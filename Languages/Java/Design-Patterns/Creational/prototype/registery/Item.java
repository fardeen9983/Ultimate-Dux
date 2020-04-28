package prototype.registery;

// An abstract POJO class that is clonable
public abstract class Item implements Cloneable{
    public String title;
    public double price;
    public String url;

    /**
     * @return The simple clone of the Item class
     */
    @Override
    public Object clone() throws CloneNotSupportedException{
        return super.clone();
    }
    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }
}