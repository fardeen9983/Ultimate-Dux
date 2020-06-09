package bridge.demo;

import java.util.List;

// Concrete implementations will be derived from this class
public abstract class Printer {

    public String print(Formatter formatter) {
        return formatter.format(getheader(), getDetails());
    }

    abstract protected String getheader();

    abstract protected List<Detail> getDetails();

}