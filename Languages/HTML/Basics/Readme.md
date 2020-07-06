## Headings
---
Headings are pre sized elements that correspond to different sizes and can be used for putting titles, subtitles etc. There are total 6 heading tags namely **h1,h2,h3,h4,h5,h6**. Te sizes decrease in the same order

```html
<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>
```
Output
<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>

---

## Images
Images are integral part of web and are found almost everywhere for may different use cases. HTML allows embedding of images locally or from any location on the internet. For this we use the `<img>` tag

Attributes
* src - Refers to the source of image. Can be 0file path/URL
* alt - Alternate text to be displayed in case the image doesn't load
* height & width - These values can be set to screen percentage, pixels, ems, and other sizing standards
  
```html
<img src="demo.png" alt="Some Alternate Text" width="50%" height="50%">
```

## Hyperlinks
Hyperlinks (anchor tags) allow connecting elements to same/other web pages and/or positions in it. 

They can be placed enclosing any of the html tags and that part will be clickable and on that event will lead to some other page or position.

For internal links we use HTML d assigned to the tag in anchor tag's link (href)

It is pretty simple to nest an Anchor tag in other tags

Dead Links - Simple # character to assigned to href attribute creates a dead links, which leads to nowhere

Attributes
* href - Reference to the same page position/URL 
* target - Describes the behavior of clicking on the anchor tag
  * _blank - opens the content in a new page
  * _self - opens linked doc within the same frame
  * _parent - opens the linked doc in parent frame
  * _top - opens the linked doc in the full body of window


```html
<a href="https://www.google.com"> Go to Google</a>

<!--Internal links -->
<a href="#custom-div"> Customize<a>
.....
.....
<div id="#custom-div">Customize here</div>

<!-- Nested Tag -->
<p>This is simple text, but <a href="www.google.com">this</a> is a link </p>

<!-- Dead Link -->
<a href="#">Nowhere to go</a>
```
**Output**

<a href="https://www.google.com"> Go to Google</a>

<!--Internal links -->
<a href="#custom-div"> Customize</a>

<div id="custom-div">Customize here</div>

<!-- Nested Tag -->
<p>This is simple text, but <a href="https://www.google.com">this</a> is a link </p>

<a href="#">Nowhere to go</a>

----
## Lists

### Unordered lists
Lists that do not have indexed entries are called unordered lists. They have bullets for each item in the list and the options are
* Circle
* Disc
* Square

To start such a list we use `<ul>` tag. Each List item is enclosed within `<li>` tags

```html
Default List with Disc bullet
<ul>
  <li>First</li>
  <li>Second</li>
  <li>Third</li>
  <li>Fourth</li>
</ul>

With Disc
<ul style="list-style-type:disc">
  <li>First</li>
  <li>Second</li>
</ul>

With Square
<ul style="list-style-type:square">
  <li>First</li>
  <li>Second</li>
</ul>

```

**Output**

Default List with Disc bullet
<ul>
  <li>First</li>
  <li>Second</li>
  <li>Third</li>
  <li>Fourth</li>
</ul>

With Disc
<ul style="list-style-type:circle">
  <li>First</li>
  <li>Second</li>
</ul>

With Square
<ul style="list-style-type:square">
  <li>First</li>
  <li>Second</li>
</ul>

### Ordered Lists
These are also called numbered lists with characters/numbers in sequences for index in the list. The tag that we use for this is `<ol>`

Types : 
* armenian
* cjk-ideographic
* decimal
* decimal-leading-zero
* georgian
* hebrew
* hiragana
* hiragana-iroha
* katakana
* katakana-iroha
* lower-alpha
* lower-greek
* lower-latin
* lower-roman
* upper-alpha
* upper-latin
* upper-roman
* none
* inherit

**Attributes**
* reversed - start the numbered list in decreasing order
* start - Replace the starting number/letter
* type - Specifies kind of marker to use in list. Directly takes the value example

**Example**
```html
<ol>
  <li>First</li>
  <li>Second</li>
  <li>Third</li>
  <li>Fourth</li>
</ol>
```
**Output**

<ol>
  <li>First</li>
  <li>Second</li>
  <li>Third</li>
  <li>Fourth</li>
</ol>

### Nesting of Lists
We can nest a combination of ordered and unordered list to any degree. In this case a list item in the list contains another list

**Example**
```html
<ol>
  <li>Coffee</li>
  <li>Tea
    <ul>
      <li>Black tea</li>
      <li>Green tea</li>
    </ul>
  </li>
  <li>Milk</li>
</ol>
```

**Output**
<ol>
  <li>Coffee</li>
  <li>Tea
    <ul>
      <li>Black tea</li>
      <li>Green tea</li>
    </ul>
  </li>
  <li>Milk</li>
</ol>