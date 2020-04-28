package prototype.registery;
// Another subclass of Item
public class Movie  extends Item{
    private String runtime;
    /**
     * @return the runtime
     */
    public String getRuntime() {
        return runtime;
    }

    /**
     * @param runtime the runtime to set
     */
    public void setRuntime(String runtime) {
        this.runtime = runtime;
    }
}