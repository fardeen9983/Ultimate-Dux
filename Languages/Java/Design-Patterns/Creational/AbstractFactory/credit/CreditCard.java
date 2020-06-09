package AbstractFactory.credit;

public abstract class CreditCard {
    protected int cardNumLength;
    protected int cscNumber;

    /**
     * @return the cardNumLength
     */
    public int getCardNumLength() {
        return cardNumLength;
    }

    /**
     * @return the cscNumber
     */
    public int getCscNumber() {
        return cscNumber;
    }

    /**
     * @param cardNumLength the cardNumLength to set
     */
    public void setCardNumLength(int cardNumLength) {
        this.cardNumLength = cardNumLength;
    }

    /**
     * @param cscNumber the cscNumber to set
     */
    public void setCscNumber(int cscNumber) {
        this.cscNumber = cscNumber;
    }
}