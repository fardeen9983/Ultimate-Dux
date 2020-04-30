# Canvas

* JavaScript based graphics element
* Its an HTML element itself and all drawing is done in JS
* Only revolves around the use of `<canvas>` tag
* It uses **Context** for drawing everything. Context Types :
  * 2d
  * webgl
  * webgl2
  * bitmaprenderer, etc
* Consitent quality, regardless of rendered size
* Can be used to create 2D and 3D rasterized images
* Good choice for animation, game graphics and image manipulation
* Imperative nature of code

**Example :**  [Smiley Face]()

## Topics
1. Basic shapes
2. Paths
3. Text
4. Images
5. Gradients
6. Sketching

## Basic Shapes
* Add **Canvas** HTML element
* Set height and width
* Create reference to `<canvas>` tag in JavaScript
* Retrieve drawing context
* Set context attributes
* Differnet context methods for shapes
  * Rectangle : `rect(x, y, width, height)`
  * Ellipse   : `ellipse(x, y, rx, ry, startAngle, endAngle, [antiClockwise])`
  * Arc : `arc(x, y, radius, startAngle, endAngle, [antiClockwise])`
  * Arc II : `arcTo(x1, y1, x2, y2, radius)`
  * Line : `lineTo(x, y)`

```html
<body>
    <canvas id="canvas" width="200" height="200"></canvas>

    <script>
        const canvas = document.getElementById("canvas");
        cont ctx = canvas.getContext("2d");

        // Set attributes
        ctx.strokeStyle = "black";
        ctx.fillStyle = "rgb(240,90,40)";
        ctx.lineWidth = 5;

        // Start drawing
        ctx.beginPath();
        ctx.rect(10,10,100,100);
        ctx.stroke();
        ctx.fill();
    </script>
</body>
```
