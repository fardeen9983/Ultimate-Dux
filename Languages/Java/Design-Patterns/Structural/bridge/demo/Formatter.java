package bridge.demo;

import java.util.List;

public interface Formatter {
    // Format interface method for data class
    String format(String header,List<Detail> details);
}