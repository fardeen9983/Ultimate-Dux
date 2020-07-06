# HTML Basics

HTML - Hyper Text Markup Language - defines the structure of a Web Page. It is made up of a collections of elements called *tags* that are organized in such a way as to provide needed information to browser to render the web page properly.

The term HyperText comes from early days of WEB where a website was a collection of static documents which had links to other pages thus allowing navigation without explicit search.

Tags are keywords enclosed in angular brackets. There are variants having just a simple tag or also having a closing tag. Example
```html
<p> This is a paragraph </p>

This is simple HTML text.<br> Now this is break line  to go to next line 
```

## HTML Page structure
---

## Commenting
A popular tool for a developer to describe the intention of the code they have written as well provide human readability of what is going on, is **comments**. Comments are lines of code in programming which are ignored and not included in actual code execution. They only serve a descriptive purpose as stated above.

* Comments start with `<!--` and end with `-->`
* They are not executed
* They can span single/multiple lines

Example
```html
<p>This is a paragraph</p>
<!--This is a single line comment-->
<!-- This is a multiline comment
     It can include actual HTML code too
    <p> Such as the P tag </p>
-->
```

## HTML 5
There are various tags added in the HTML 5 release which add greater functionality to the language.

These tags give a descriptive structure to your HTML, make your HTML easier to read, and help with Search Engine Optimization (SEO) and accessibility. 

### main
The main HTML5 tag helps search engines and other developers find the main content of your page.

```html
<main> 
  <h1>Hello World</h1>
  <p>Hello Paragraph</p>
</main>
```


