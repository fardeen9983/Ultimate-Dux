package bridge.demo;


// Simple Data classes
public class Movie {
    private String classification;
    private String runtime;
    private String title;
    private String year;

    /**
     * @return the classification
     */
    public String getClassification() {
        return classification;
    }

    /**
     * @return the runtime
     */
    public String getRuntime() {
        return runtime;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @return the year
     */
    public String getYear() {
        return year;
    }

    /**
     * @param classification the classification to set
     */
    public void setClassification(String classification) {
        this.classification = classification;
    }

    /**
     * @param runtime the runtime to set
     */
    public void setRuntime(String runtime) {
        this.runtime = runtime;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @param year the year to set
     */
    public void setYear(String year) {
        this.year = year;
    }

}