# Kivy

[YouTube link - Tech with Tim](https://www.youtube.com/watch?v=bMHK6NDVlCM&list=PLzMcBGfZo4-kSJVMyYeOQ8CXJ3z1k7gHn)

A cross platform GUI kit in Python which supprts application development for Winodws, macOS, Linux, Android and iOS as well, making it a very useful framework to learn.

Kivy's competitors are PyQT or QT with python, Tkinter and a few others, where QT with Python (formerly PySide 2) is the most widely used and popular framework of them all.

## Resources

### [Official Documentation](https://kivy.org/doc/stable/gettingstarted/intro.html)

## Installation

Kivy, being a Python library, leverages the benefit of being available on any system that supports python. You can find the installation instructions for your platform at this [link](https://kivy.org/#download).

So first of all you need to install Python on your system. The latest version available at the time of writing this doc is 3.8.1 (available [here](https://www.python.org/downloads/)).

Check if pip tool is accessible through terminal/cmd/powershell. If you are using Anaconda package manager then simply install the desired package

```bash
conda install kivy -c conda-forge
```

For installation through pip, first update packages

```bash
python -m pip install --upgrade pip wheel setuptools virtualenv
```

Next we can simply pip install the package but the advised way is to create a virtaual env and install all dependencies locally

In your project root dir, do the following:

```bash
# Create Virtual Environment
virtualenv venv
# Activate it
venv\Scripts\activate
# Install dependencies for Kivy
pip install docutils pygments pypiwin32 kivy_deps.sdl2==0.1.* kivy_deps.glew==0.1.*
# If you are using python 3.5+ then you cna replace the glew package with the angle onw
python -m pip install kivy_deps.angle==0.1.*


# Optional dependency of gstreamer for audio/video
pip install kivy_deps.gstreamer==0.1.*

# Install Kivy
pip install kivy==1.11.1

# Optional Kivy examples
pip install kivy_examples==1.11.1
```

If you have installed the Kivy examples too, then you can directly run a Kivy example like this:

```bash
python venv\share\kivy-examples\demo\showcase\main.py
```

All these dependencies will be available in the `Requirements.txt` file which you can use to directly install all above dependencies.

You can also refer to this [documentation](https://kivy.org/doc/stable/installation/installation-windows.html) to install the developer version of Kivy with Visual C Build tools and MingwPY. Or you can build and edit Kivy from the source too, bu that is not required for simple development.

## Getting started

1. Start by creating a new python file in a folder and importing `kivy`
2. Run the file and check for errors
3. Import `App` class from `kivy.app` module
4. Create a `derived class` of the imported App class and define the build method which basically returns a widget imported from the `uix` module of kivy
5. Call the `run` method on the derived class's instance to render the application.
6. Your first Kivy app is complete in a single file with a few lines of code
7. Run it using python command

The created window can be resized with internal layout adjusting itself, thus proving that it will adjust for any platform

We can create complicated UI designs using layouts and combining them further. We can also bind event callbacks on widgets

## **KV design language**

KV is a design specification used for styling Kivy applications much like we usee CSS in HTML applications. Just like CSS we create a seperate `.kv` file which holds our design to be used in Kivy app.

- ### **File structure**

  Important thing to note is that the name of the kv file has to be the same as the Kivy app class name with the App (if present), removed. So for `MyApp` class, kv file will have name `main.kv`.

  While using `kv` files, we need to make sure not use in-built widgets direclty like `Label/TextInput`. Instead we will use the generic parent of these classes, the `Widget` class; which will be actually styled in the `kv` file.

- ### **kv basics**

  The beginning of the `kv` file should contain the line `# : kv !` where ! should be replaced by minimum supported `Kivy` version

  So whenever we need to style/customise a custom widget defined in the python file in the kv file, we refer to its class name enclosed in HTML like tags and use indented yaml like structure to define and add properties to it.

- ### **Combining Design with Logic**

  Now to connect our design with logic, such as collecting data from the widgets, we cannot use the same methods we used in our python code. Instead we have create member variables inside the kv design and use their values. The variables will then point to ids which are associated with widgets like TextInput.

- ### **Properties in Kivy**

  So the first step is to give IDs to widgets we want to connect our logic to and then define variables pointing to specific IDs. AFter this is done we can access the newly created properties from within the python file for our Kivy app using the `kivy.properties` module. This way you can bind the properties and events asscoiated with your widgets defined in the `kv` file with that in the `py` file.

- ### **Global Styling**

  Another thing to note down is, that just like CSS global styling of tags, we can also define global properties for custom elements like we did for specific CustomGrid. The point is that when we define this in our main kv file, all occurences of the widget modified in the style, will be applied everywhere it occurs, irrespective of their hierarchy.

  So if you define some properties for the button tag like this:

  ```kivy
  <Button>
      font_size : 40
      color : -0.3,0.4,0.5,1
  ```

  ***

  **Positioning** :

  Using the `post_hint` we can easily define the global positioning of specific widgets.

  It works on the following parameters each varying in a range of `0 to 1`:

  `x, y, top, bottom, left, right`

  Here (0,0) is the bottom left, so X and Y are refernece to the position of the widget with respect to the bottom left while top, bottom , left and right refer to the different sides of the widget.

  Example :

  ```kivy
  <Button>
        pos_hint : {"x":0.5,"top":1}
  ```

  ***

  **Sizing** :

  Now just like how the positioning is different for global styles, so is the size property. In order to define the size of widgets globally we use `size_hint` in place of `size`. It takes two values from 0 to 1 scaled to the size of the root window.

  In this example, the button will have 30% width and 50% height of the root widget:

  ```kivy
  <Button>
        size_hint : 0.3, 0.5
  ```

## **Touch Input**

All the widgets in the Kivy UI library are equipped with three methods to react to touch events such as :

| Event | Callback      |
| ----- | ------------- |
| Move  | on_touch_move |
| Down  | on_touch_down |
| Up    | on_touch_up   |

Each take a `self` and a `touch` param with information of touch position. If you are using a mouse pointer, then the events will covered under `MouseMotionEvent`.

The `touch` param returns the position of the touch with `spos` giving relative and `pos` giving absolute position of the motion event

**Note** : Not returning the super method in these callbacks would result in the default motion event action being disabled. But it also enables you to modify default behaviour too, like the change in color when button is pressed, etc

### **Notes**

- **Coloring** :

  Colors in Kivy widgets is based on RGBA scheme with values for Red, Green and Blue colors ranging between `-1.0 to 1.0`. For Alpha we have range `0 to 1`

- **Positioning** :

  It is important to note that while you can give specific positions in X and Y axis for widgets in your Layout, you cannot do the same for global styling. In that case we have to use `pos_hint` in place of `pos`

- **States** :

  Widgets like Button have states which can be accessed through the `state` property of the widget.

  For Example : The Button widget has two states

  | State  | Meaning              |
  | ------ | -------------------- |
  | Normal | Not pressed/touched  |
  | Down   | Pressed down/clicked |

- **Importing classes**

  You must have noticed by now that while importing Kivy classed, the name of the final module in the module path/structure is basically the name of the Class in lowercase:

  ```py
  from kivy.uix.button import Button
  ```

  It simply means that all the classes are placed in individual modules of the same name.
