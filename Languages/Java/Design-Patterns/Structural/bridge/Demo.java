package bridge;

public class Demo {
    public static void main(String[] args) {
        Circle circle = new BlueCircle();
        
        Square square = new RedSquare();
    
        circle.applyColor();
        square.applyColor();

        // Adding any more colored shape will require us to be build a concrete class for the same
    }
}