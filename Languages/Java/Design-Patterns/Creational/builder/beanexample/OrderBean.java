package builder.beanexample;

// A simple bean example with members and respective getters-setters 
public class OrderBean {
    private String bread;
    private String condiments;
    private String dressing;
    private String meat;

    // Default constructor
    public OrderBean(){

    }

    // Example of Telescoping constructors
    public OrderBean(String bread){
        this.bread = bread;
    }

    public OrderBean(String bread, String condiments){
        this(bread);
        this.condiments = condiments;
    }

    public OrderBean(String bread, String condiments, String dressing){
        this(bread,condiments);
        this.dressing = dressing;
    }

    public OrderBean(String bread, String condiments,String dressing, String meat){
        this(bread,condiments,dressing);
        this.meat = meat;
    }

    /**
     * @return the bead
     */
    public String getBread() {
        return bread;
    }

    /**
     * @return the condiments
     */
    public String getCondiments() {
        return condiments;
    }

    /**
     * @return the dressing
     */
    public String getDressing() {
        return dressing;
    }

    /**
     * @return the meat
     */
    public String getMeat() {
        return meat;
    }

   
}