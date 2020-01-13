# Kivy

A cross platform GUI kit in Python which supprts application development for Winodws, macOS, Linux, Android and iOS as well, making it a very useful framework to learn.

Kivy's competitors are PyQT or QT with python, Tkinter and a few others, where QT with Python (formerly PySide 2) is the most widely used and popular framework of them all.

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
python kivy_venv\share\kivy-examples\demo\showcase\main.py
```

All these dependencies will be available in the `Requirements.txt` file which you can use to directly install all above dependencies.
