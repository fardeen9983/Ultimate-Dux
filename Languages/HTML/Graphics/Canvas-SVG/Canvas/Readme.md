# Canvas

* JavaScript based graphics element
* Its an HTML element itself and all drawing is done in JS
* Only revolves around the use of `<canvas>` tag
* It uses **Context** for drawing everything. Context Types :
  * 2d
  * WebGL
  * webgl2
  * bitmaprenderer, etc
* Consistent quality, regardless of rendered size
* Can be used to create 2D and 3D rasterized images
* Good choice for animation, game graphics, and image manipulation
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
## Paths
* `moveTo` is used to move thee drawing point to given position
* `lineTo` is used for drawing line from current position to given coordinates
* `closePath` will connect last draw point to initial draw point
* `stroke` is used to draw outline border
```js
ctx.beginPath();
ctx.moveTo(100,75);
ctx.lineTo(150,175);
ctx.lineTo(50,175);
ctx.closePath();
ctx.stroke();
```

We can still use SVG syntac to create the Path
```js
const p = new Path2D(
  'M 100,75' +
  'l 50,100' +
  'h -100' +
  'z');
ctx.stroke(p);
```

## Transform
* `save` method saves te current transformation state
* `restore` method is used to revert to the saved transformation state
```js
```

## Adding text
* `font` attr can be used to set font style like : *bold 25px sans-sarif*
* `measureText` methods returns the dimension of the said text string will occupy in the canvas
* `fillText` method is used to render out text starting LTR at the give x-y position

```js
const text = "Ultimate Custom Pie Maker";
ctx.font = '25px sans-serif';
// Get the estimated portion size of the canvas that the passed element will likely occupy
const dims = ctx.measureText(text);
ctx.fillStyle = "#a593c2"
ctx.fillText(text, 200 -dims.width / 2, 30);
```

## Adding Images
* Create `Image` object in JS
* Set the `src` attribute
* When the image data is loaded then add the image to the canvas using `drawImage` method

```js
const image = new Image();
image.src = "../../logo.png";
image.addEventListener('load', () => {
    ctx.drawImage(image, 320, 320, 70, 70);
});
```

## Gradients
* Created using method `createXGradient` where X can be linear, radiant, etc
* Stops are added using `addColorStop` method
* Finally the gradient is applied as fill/stroke style

```js
// Linear Gradient
let gradient = ctx.createLinearGradient(10,0,180,0);
gradient.addColorStop(0,'rgb(240,90,40)');
gradient.addColorStop(1,'rgb(42,159,188)');

ctx.fillStyle = gradient;
ctx.fillRect(10,0,180,180);

// Radial Gradient
gradient = ctx.createRadialGradient(100,100,0,100,100);
gradient.addColorStop(0,'rgb(240,90,40)');
gradient.addColorStop(1,'rgb(42,159,188)');

ctx.fillStyle = gradient;
ctx.fillRect(10,0,180,180);

```