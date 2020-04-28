package AbstractFactory.credit;

public class AmexValidator implements Validator{

    @Override
    public boolean isValid(CreditCard creditCard) {
        
        return false;
    }

}
