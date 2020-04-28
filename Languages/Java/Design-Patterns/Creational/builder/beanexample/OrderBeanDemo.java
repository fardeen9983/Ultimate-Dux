package builder.beanexample;
// A demonstration of use of Builder Pattern with a Bean class
public class OrderBeanDemo {
    public static void main(String[] args) {
        // Create Bean instance
        OrderBean bean = new OrderBean();
        
        // // set Bean properties
        // bean.setBread("Wheat");
        // bean.setCondiments("Lettuce");
        // bean.setDressing("Mustard");
        // bean.setMeat("Hame");

        // Use of Telescoping constructors
        bean = new OrderBean("Wheat", "Lettuce", "Mustard", "Ham");

        // Bean getters
        System.out.println(bean.getBread());
        System.out.println(bean.getCondiments());
        System.out.println(bean.getDressing());
        System.out.println(bean.getMeat());
    }

}