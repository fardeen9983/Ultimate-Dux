# Scalable Vector Graphics

* SVG uses an XML-based language that is similiar to HTML
* 

**Example**
```xml
<svg xmlns="http://www.w3.org/2000/svg" height="600" width="500"> 
    <circle cx="250" cy="250" r="200" fill="rgb(255,255,0)" stroke-width="5"/>
    <g fill="rgb(200,200,0)">
        <circle cx="175" cy="175" r="20">
        <circle cx="325" cy="175" r="20">
    </g>
    <path d="M 175,275 c 10,90,140,90,150,0" stroke-width="5" stroke-linecap="round" fill="transparent"/>
    <text x="250" y="500" text-anchor="middle">
        SVG Graphics demo
    </text>
</svg>
```
## Topics
1. Basic shapes
2. Paths
3. Text
4. Images
5. Gradients
6. Animations