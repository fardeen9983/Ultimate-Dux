package builder.beanexample;

// A simple bean example with members and respective getters-setters 
public class OrderBean {
    private final String bread;
    private final String condiments;
    private final String dressing;
    private final String meat;

    // Static inner class Builder
    public static class Builder{
        private String bread;
        private String condiments;
        private String dressing;
        private String meat;
        
        // Default constructor
        public Builder() {
            
        }

        // Implementation of Builder that actually returns the Outer class instance
        public OrderBean build(){
            return new OrderBean(this);
        }

        // Different methods that return builder instances based on parameters passed
        public Builder bread(String bread){
            this.bread = bread;
            return this;
        }
        
        public Builder condiments(String condiments){
            this.condiments = condiments;
            return this;
        }

        public Builder dressing(String dressing){
            this.dressing = dressing;
            return this;
        }
    
        public Builder meat(String meat){
            this.meat = meat;
            return this;
        }
    }
    
    // Builder constructor 
    public OrderBean(Builder builder){
        this.bread = builder.bread;
        this.dressing = builder.dressing;
        this.condiments = builder.condiments;
        this.meat = builder.meat;
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