package bridge;

public class Demo {
    public static void main(String[] args) {

        Color blue = new Blue();
        Shape square = new Square(blue);

        Color red = new Red();
        Shape circle = new Circle(red);

        circle.applyColor();
        square.applyColor();
    }
}