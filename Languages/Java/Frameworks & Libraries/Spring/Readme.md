# Spring Framework

When people refer to Spring they are actually referring to the family of Projects under the Spring Framework

The origin of Spring dates back to the release of the Spring Framewrok which was a solution to the then complex, time consuming and complex development of Enterprise applications using Java's EE framework. Spring Framework aims at reducing the efforts for web development and data access in applications adn reduce boiler plate code

Success of Spring Framework resulted in creation of numerous Spring Projects built on top of the Spring Framework. Some are listed below
* Spring Kafka
* Spring Social
* Spring LDAP
* Spring Data
* Spring Batch
* Spring Security
* Spring Web Services
* Spring Session
* Spring Integration, etc....


Spring Framework is modular and each piece of it is aimed at achieving particular functionality. It can be borken down into six key areas:
* Core
* Web
* AOP (Aspect Oriented Programming)
* Data Access
* Integration
* Testing

#### Spring Core
* Its the most important part of the Spring framework upon which all other modules are built
* It is repsonsible for providiing a number of basic functionalities
  * i18n internationalization
  * Validation 
  * Type conversion
  * Data binding, etc
* The most important feature provided is dependecy injection. Spring core is known as a dependency injection container
  * In object oriented programming, many times objects have dependencies that themselves are objects
  * Dependency Injection deal with the way objects fulfill their dependent objects
  * We can either make the object itself fulfill it's dependencies or make it declare the dependencies and let some other part of the program fulfill it 
  * The first optio seems easy but it leads to tight coupling between object and it's dependency. The later option is more flexible and leads to loosely coupled objects. Spring core follows the later principle
* Spring Core creates and manages object and their dependencies. This leaves lesser work for the developer

#### Spring Web
* Web support is provided by the Spring Web module
* It's a framework for handling the web requests
* The two options for doing so are Spring Web MVC or Spring Webflux

* Java EE introduced web applications using a simple Servlet based API where a servlet is an object that recieves a request and generates a response based on that request
* The request is sent to the Web server and is recieved by the servlet API which passes it onto the Buisness logic and the obtained result is passed back to the client through the web server
* Challenges with the Servlet API
    * Somewhat low level API
    * Not as easy to use and less productive
    * Easy to mix up low level implememtations without proper design principles

##### Spring Web MVC
* The same process flow but in case of Spring Web MVC
  * The Request is sent to the Web server and is recieved by the Servlet API
  * But now the servelt API first passes the request to the underlying Spring MVC layer and then to the Buisness logic 
  * The business logic passes the control back to Spring Web MVC and finally repsonse is passed on 
* Advantages of Spring Web MVC
  * Provides a higher level API
  * This leads to easier usage and more productivity
  * Has an added benefit of addding code based on proper design principle

##### Spring WebFlux
* Another way of handling web requests 
* Follows reactive programming - a declarative programming paradigm concerned with data streams and the propagation of change .i.e, you react to the change rather than wait for it
* hence WebFlux handles web requests asynchronously and thus dont block or wait for processes 

#### Spring AOP
* AOP (Aspect Oriented Programming) is a programming paradigm that aims to increase the modularity of a project y 




**Spring Boot** was later introduced as a simplier method of adding Spring projects to create Spring based applications in a more oppinionated fashion removing the need for making many choices while picking from the family of Spring projects. Spring boot helped in automating configurations for certain kind of projects making developing and deploying Spring projects much efficient

**Spring Cloud** is built upon Spring Boot and simplified the development of Spring based architecture which run on distibuted architecture such as microservice pattern on the cloud

## Why Spring ?
Early on Spring was introduced as an alternate to Java EE. But as it stands now it is much more than just that. In fact its complimentary to Java EE.

The main reason we use Spring Framework is because it makes it easier to build Java Enterprise applications. It has other benefits such as
* Flexible, modular and backwards compatible
* Large and Active community
* Continually innovates and evolves - Open source with full time corporate support from Pivotal

## Spring Boot
* Spring boot makes getting started with Spring quick and easy
* It can be used to create both web and non-web applications
* Although Spring boot is built upon the Spring framework it has some notable unique features.

### Features
#### Auto configuration
* It attempts automatically to configure Spring application based on the added dependencies
* Auto Configurations are contextually aware and smart
* It makes a best guess how to setup the application
* Setting up auto configuration is very effortless
    ```java
    @EnableAutoConfiguration
    public class DemoApp{

    }
    ```
* The configuration are as non invasive as possible. It moves outof the way when not needed
#### Opinionated
* When building Java based application there are tons of choices to choose from libraries, config,tooling, build tool, colllection choices, etc
* Spring Boot favours convention over configuration and is designed to get you up and running as soon as possible
* Still it makes it possible to override any of these choices
#### Standalone
* Spring Boot makes it easy to create stand-alone, production-grade Spring based applications that you can 'just run'
* Typical process for running a Java based Web application
    1. Package application
    2. Choose and Download Webserver
    3. Configure Webserver
    4. Deploy application & start Webserver
* On the other hand we just package and run the Spring Boot applications
    ```bash
    java -jar application.jar
    ```
    
## Reference
1. [Dustin Schultz](http://dustin.schultz.io)
2. [Spring : The Big Picture](https://app.pluralsight.com/player?course=spring-big-picture&author=dustin-schultz&name=cb2bdb36-85ec-4d22-8ece-263d4318aa80&clip=0)