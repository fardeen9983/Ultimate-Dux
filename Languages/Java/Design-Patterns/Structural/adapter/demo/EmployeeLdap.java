package adapter.demo;

// Legacy code for EmployeeDb and without use of interface
public class EmployeeLdap {

    private String cn;
    private String givenName;
    private String mail;

    public EmployeeLdap(String cn, String givenName, String mail) {
        this.cn = cn;
        this.givenName = givenName;
        this.mail = mail;
    }

    /**
     * @return the cn
     */
    public String getCn() {
        return cn;
    }

    /**
     * @return the givenName
     */
    public String getGivenName() {
        return givenName;
    }

    /**
     * @return the mail
     */
    public String getMail() {
        return mail;
    }
}