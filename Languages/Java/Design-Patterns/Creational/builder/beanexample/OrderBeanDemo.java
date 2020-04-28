package builder.beanexample;
// A demonstration of use of Builder Pattern with a Bean class
public class OrderBeanDemo {
    public static void main(String[] args) {
        // Create a builder instance for OrderBean
        OrderBean.Builder builder = new OrderBean.Builder();

        // Set properties using builder
        builder.bread("Wheat").condiments("Lettuce").dressing("Mustard").meat("Ham");

        // Create Bean instance from builder
        OrderBean bean = builder.build();

        // Bean getters
        System.out.println(bean.getBread());
        System.out.println(bean.getCondiments());
        System.out.println(bean.getDressing());
        System.out.println(bean.getMeat());
    }

}