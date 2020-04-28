package AbstractFactory.credit;

public class Demo {
    public static void main(String[] args) {

        // AbstractFactory instance based on param
        CreditCardFactory absFactory = CreditCardFactory.getCreditCardFactory(775);

        // Get the Credit card
        CreditCard card = absFactory.getCreditCard(CardType.PLATINUM);
        System.out.println(card.getClass());

        // Another creditCard factory
        absFactory = CreditCardFactory.getCreditCardFactory(600);
        card = absFactory.getCreditCard(CardType.GOLD);
        System.out.println(card.getClass());

    }
}