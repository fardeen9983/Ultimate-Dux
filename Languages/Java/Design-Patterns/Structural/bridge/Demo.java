package bridge;

public class Demo {
    public static void main(String[] args) {
        Circle circle = new BlueCircle();
        
        Square square = new RedSquare();
    
        circle.applyColor();
        square.applyColor();
    }
}