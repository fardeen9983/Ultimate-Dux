# Scalable Vector Graphics

* SVG uses an XML-based language that is similar to HTML
* Integrate well with HTML and CSS
* Consistent quality, regardless of rendered size

**Example :**  Smiley Face
```xml
<svg xmlns="http://www.w3.org/2000/svg" height="600" width="500">
    <circle cx="250" cy="250" r="200" fill="rgb(255,255,0)" stroke-width="5"/>
    <g fill="rgb(200,240,0)">
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
* All SVG elements are wrapped in `<svg>` tags
* We define XML namespace at the top `<svg>` tag to define it's vocabulary i.e "[http://www.w3.org/2000/svg](http://www.w3.org/2000/svg)"
* Set height and width of the element
* All measurements are made in pixels (px)
* Coloring of the shape in two possible methods - **stroke** and **fill**
* **stroke** take cares of the outline color and **stroke-width** defines the width of the stroke
* **fill** uses RGB value to fill the shape with color
* The `<defs>` tag allow us to create reusable elements in the SVG

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

## Paths
* `<path>` tag represents the Path element
* `d` attribute represents the direction/trajectory the path needs to take
* `M` or `m` : move
* `L` or `l` : Draw line
* `H` or `h` : Horizontal line
* `V` or `v` : Vertical line
* `C` or `c` : Bezier curve
* `S` or `s` : Smooth adjacent Bezier curve
* `Q` or `q` : Quadtric curve
* `T` or `t` : Smooth adjacent quadtric curve
* `A` or `a` : Curve
* `Z` or `z` : Close curve
* Arguemnts : 1st - Pixels to move right, 2nd - Pixels to move down
* Negative values of arguments represent opposite directions
* Learn more about the Path tag and it's attributes [here](https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Paths)
```xml
<svg xmlns="http://www.w3.org/2000/svg" height="200" width="200">

    <!-- Path -->
    <path
        d = " M 100, 75
              l 50, 100
              h -100
              z"
    />
</svg>
```

## Text
* Use tag `<text>` for placing text inside the SVG
* Attributes : Other than normal x, y coordinates and fill attributes we have
  * `text-anchor` : to align text position
  * font controls : `font-family`, `font-size`, `font-weight`
* We can further edit and apply attributes to sections of text using the `<tspan>` tag

```xml
<svg xmlns="http://www.w3.org/2000/svg" height="200" width="200">
    <text x="100" y="100" text-anchor="middle" font-family="sans-serif" fill="#a593c2" font-size="25">
           <tspan fill="#4dcfa8" font-weight="bold">Ultimate</tspan> Custom Pie Maker
    </text>
</svg>
```

## Gradients
* Gradients are defined using the `<linear-gradient>` tag
* Here in the example we have added the linear gradient element in the `<defs>` section as a reusable element
* In linear gradients, we have stops on a linear path that define which color we have at those stops. The `<stop>` tag is used for that
* The linear gradient is used to fill a rectangle in the SVG

```xml
<svg xmlns="http://www.w3.org/2000/svg" height="500" width="200">
    <defs>
        <linearGradient id="gradient1">
            <stop offset="0%" stop-color="rgb(240,90,40)"/>
             <stop offset="100%" stop-color="rgb(42,159,188)"/>
        </linearGradient>
    </defs>
    <rect width="180" height="180" x="10" y="10" fill="url(#gradient1)"/>
</svg>
```

Following example is for a Radial gradient. The color grows from center and spreads outward
```xml
<svg xmlns="http://www.w3.org/2000/svg" height="500" width="200">
    <defs>
        <radialGradient id="gradient1">
            <stop offset="0%" stop-color="rgb(240,90,40)"/>
             <stop offset="100%" stop-color="rgb(42,159,188)"/>
        </radialGradient>
    </defs>
    <rect width="180" height="180" x="10" y="10" fill="url(#gradient1)"/>
</svg>
```

## Animation
We can apply the transform style attributes to animate SVG/it's elements like we do with standard HTML content

## Further Reading
Head over the [Mozilla Documentation](https://developer.mozilla.org/en-US/docs/Web/SVG) to learn more about SVG