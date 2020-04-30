# Scalable Vector Graphics

* SVG uses an XML-based language that is similiar to HTML
* Integrate well with HTML and CSS
* Consitent quality, regardless of rendered size

**Example :**  Smiley Face
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


## Basics
* All SVG elements are warpped in `<svg>` tags
* We define XML namesapce at the top `<svg>` tag to define it's vocabulary i.e "[http://www.w3.org/2000/svg](http://www.w3.org/2000/svg)"
* Set height and width of the element
* All measurements are made in pixels (px)
* Coloring of the sahpe in two possible methods - **stroke** and **fill**
* **stroke** take cares of the outline color and **stroke-width** defines the width of the stroke
* **fill** uses RGB value to fill the shape with color

```xml
<svg xmlns="http://www.w3.org/2000/svg" height="600" width="500">

</svg>
```

## Basic shapes
### Rectangle
1. Outer `<svg>` tag
2. To add Rectangle shape add `<rect>` tag
3. Add 2D position for Rectangle's upper left corner 
4. Add width and height of the shape
7. Add stroke and fill color 

```xml
<svg xmlns="http://www.w3.org/2000/svg" height="200" width="200"> 
    <!-- Rectangle Shape -->
    <rect 
        x="10" y="10"
        width="50" height="50"
        stroke="black" stroke-width="5"
        fill="rgb(240,90,40)"
    />
</svg>
```

### Other shapes
```xml
<svg xmlns="http://www.w3.org/2000/svg" height="200" width="200"> 
    
    <!-- Rectangle -->
    <rect 
        x="10" y="10"
        width="100" height="100"
    />
    
    <!-- Rectangle with rounded corner-->
    <rect 
        x="10" y="10"
        width="100" height="100"
        rx="10" ry="10"
    />

    <!-- Circle -->
    <circle 
        cx="50" cy="50" r="20"
    />

    <!-- Ellipse -->
    <ellipse
        cx="50" cy="50" 
        rx="50" ry="20"
    />

    <!-- Circle -->
    <line 
        x1="25" y1="25" x2="50" y2="50"
    />

    <!-- PolyLine -->
    <polyline 
        points="100,75 150,175 50,175"
    />

    <!-- Polygon -->
    <polygon 
        points="100 75 150 175 50 175"
    />
</svg>
```