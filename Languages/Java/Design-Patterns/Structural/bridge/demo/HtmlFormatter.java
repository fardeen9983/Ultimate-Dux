package bridge.demo;

import java.util.List;

public class HtmlFormatter implements Formatter {

    @Override
    public String format(String header, List<Detail> details) {
        StringBuilder builder = new StringBuilder();
        builder.append("<table>")
        .append("<tr>")
        .append("<th>").append("Classification").append("</th>")
        .append("<th>").append(header).append("</th>");
        for(Detail detail : details){
            builder.append("<tr>")
            .append("<th>").append(detail.getLabel()).append("</th>")
            .append("<th>").append(detail.getValue()).append("</th>")
            .append("</tr>");

        }
        builder.append("</table>")
        return builder.toString(); 
    }

}