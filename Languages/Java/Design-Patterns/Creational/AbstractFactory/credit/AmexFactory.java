package AbstractFactory.credit;

public class AmexFactory extends CreditCardFactory{

    @Override
    public CreditCard getCreditCard(CardType cardType) {
        switch(cardType){
            case GOLD:
                return new AmexGoldCreditCard();
            case PLATINUM:
                return new AmexPlatinumCreditCard();
            default:
             return null;
        }
    }

    @Override
    public Validator getValidator(CardType cardType) {
      return new AmexValidator();
    }


}