package AbstractFactory;

import java.io.ByteArrayInputStream;


import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;


public class Example {

    public static void main(String[] args) throws Exception{
        // Example Document content
        String xml = "<document><body><name>Ultimate-Dux</name></body></document>";
        // get bytes of the string
        ByteArrayInputStream bais = new ByteArrayInputStream(xml.getBytes());

        // AbstractFactory section
        DocumentBuilderFactory abstractFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder factory = abstractFactory.newDocumentBuilder();
        Document doc = factory.parse(bais);

        doc.getDocumentElement().normalize();

        System.out.println("Root Element :" + doc.getDocumentElement().getNodeName());

        System.out.println(abstractFactory.getClass());
        System.out.println(factory.getClass());
    }
}