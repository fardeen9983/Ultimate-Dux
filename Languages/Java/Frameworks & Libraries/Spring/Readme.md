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
* AOP (Aspect Oriented Programming) is a programming paradigm that aims to increase the modularity of a project allowing the separation of cross-cutting
* Without AOP, solving concerns that are cross-cutting results in scattered and duplicated code across many parts of an application
* Spring AOP is thus an implementation of AOP within the Spring framework
  * Used to implement certain features within the Spring framework
  * A valauable tool to handle cross-cutting concerns

#### Spring Data Access
* Traditional Java EE API and use case for handling database realted operations include a lot of boilercode surrounding the actual logic
* The Spring Data Access module reduces the code required to handle the boilerplate code for connection and handling the data from the database
    ```java
    int cnt = new JdbcTemplate(ds).qureryForInt("SELECT COUNT(*) FROM foo");
    ```
* This also makes the Database transactions very easy
* The Spring Data Access also provides Exception Translation .i.e, this module takes the vendor specific expections are mapped into a well known set of exceptions
* Testing data is easier as switching configurations is pretty easy

#### Spring Integration
* Integration is all about making different systems and applications work together
* The communincation between different systems needs to handle two obstructions
  * How do you expose operations to other systems?
  * how do you invoke or run operations on other systems?
* Exposing operations through
  * RMI (Remote Method Invocation)
  * Messaging systems
* Both of these methods are supported by the Spring framweork via this module
* The other pp=opular choice is Web choices which means exposure and invocation of methods through Web requests 
* Spring makes its easy to both expose and invoke web services using annotations
    ```java
    @RestController
    public class AccountController{
        @GetMapping("/account/{id}")
        public Account find(@PathVariable int id){
            // Look up account by ID
        }
    }
    ```
* Using a RestTemplate we can easily invoke a REST service. It abstracts away all the tedious details like opening/closing the connection to web service, sending the command, handling the response, etc
    ```java
    restTemplate.getForObject("http://foo.com/account/123",  Account.class)
    ```
#### Spring Testing
It focuses on two aspects of testing
##### Unit Testing
It is a software development process in which the smallest testable parts of an application caled units are individually and independently scrutinized for proper operation
* Explicit Support for unit testing in Spring is minimal
* The Benefit of unit testing comes from the concept of Dependency Injection in Spring
* Unit testing is fairly easy when there are no dependencies for the code been tested, otherwise dependencies cause challenge
* DI on the other hand helps in Unit testing by forcing the developer to declare the dependencies
* This allows for mock data to be passed as dependecies which allows us how they behave and thus helps testing the code and not the dependencies too
* Spring comes with several built in mocks to make testing easier and faster
##### Integration Testing
It is the phase of software testing in which individual software modules are combined and tested as a group. . It occurs after unit testing

Spring Framework provides explicit support for piecing together parts of an application for testing by injecting dependencies and put everything toghether. It provides support for following testing scenarios
* Testing data
* Web application testing

Spring framework provides support for cleaning up after tests. This is required because tests do modify things which are needed to be reversed afterwards so as not to affect the next tests

## Why Spring ?
Early on Spring was introduced as an alternate to Java EE. But as it stands now it is much more than just that. In fact its complimentary to Java EE.

The main reason we use Spring Framework is because it makes it easier to build Java Enterprise applications. It has other benefits such as
* Flexible, modular and backwards compatible
* Large and Active community
* Continually innovates and evolves - Open source with full time corporate support from Pivotal

## Spring Boot
Spring Boot was later introduced as a simplier method of adding Spring projects to create Spring based applications in a more oppinionated fashion removing the need for making many choices while picking from the family of Spring projects. Spring boot helped in automating configurations for certain kind of projects making developing and deploying Spring projects much efficient

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
Spring Boot makes it easy to create stand-alone, production-grade Spring based applications that you can 'just run'

Typical process for running a Java based Web application
    1. Package application
    2. Choose and Download Webserver
    3. Configure Webserver
    4. Deploy application & start Webserver

On the other hand we just package and run the Spring Boot applications
```bash
java -jar application.jar
```
## Spring Data
Spring Data's mission is to provide familiar and consistent, Spring-based programming model for data access while still retaining the special traits of the underlying data store. It ,makes it easy to use data acces technologies, relational and non relational databases, map-reduce frameworks, and cloud based data services

It extends the capabitilities provided by the Spring Data access module. It adds new ways of interacting with relational databases as well as support for many different types of databases

Spring Data Access is an umbrella projects, meaning it itself is not an actual project but a series of related projects for different data stores, collectively refered by it.

## Spring Cloud
Spring Cloud is built upon Spring Boot and simplified the development of Spring based architecture which run on distibuted architecture such as microservice pattern on the cloud.
> **Note** 
> A *Distributed System* is just a number ofdifferent applications running on different machines all linked totgether by a common network. Most popular implementation is the Microservice architecture.
> A *Microservice* is a small application that is well-scoped to a single purpose or domain

Spring Cloud provides tools for developers to quickly build some of the common patterns in distributed systems like
* Configuration Management
* Service Discovery
* Circuit Breakers
* Intelligent Routing
* Micro Proxy
* Control Bus
* One-time Tokens
* Global Locks
* Leadership election
* Distributed sessions
* Cluster state, etc
  
And just as Spring Data Project, Spring cloud is also an umbrella of similar projects that provide cloud solutions

## Spring Security
Spring Security is a powerful and highly cusotmizable authentication and access control framework and is the de-facto standard for securing Spring-based applications

Example configuration in a Spring project
```java
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigureAdapter{
    @Override
    public void configure(HttpSecurity http) throws Exception{
        http
            .authorizeRequests()
                .antMatchers("/css/**", "/index").permitAll()
                .antMatchers("/user/**").hasRole("USER")
                .and()
            .formLogin()
                .loginPage("/login").failureURL("/login-error");
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Excetion{
        auth
            .inMemoryAuthentication()
                .withUser("user").password("password").roles("USER");
    }
}
```

## Advantages
* Rock solid and well engineered
* Stood the test of time
* Huge community
* Well liked
* Large talent Pool
* Wealth of existing knowledge
* Actively developed
* Build in IDE support
* Scalable

## Disadvantages
* Too much "magic"
* Steep learning curve
* Increases the size of the deliverable
* Hard to debug
* Adds memory overhead
* Complexity has grown over time
* Can be too configurable
* Spring is BIG
* Community projects are sometimes hit and miss


## Reference
1. [Dustin Schultz](http://dustin.schultz.io)
2. [Spring : The Big Picture](https://app.pluralsight.com/player?course=spring-big-picture&author=dustin-schultz&name=cb2bdb36-85ec-4d22-8ece-263d4318aa80&clip=0)