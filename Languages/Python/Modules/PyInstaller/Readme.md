# PyInstaller

> Disclamer : The python code used in this section of the repository placed in the folders : **todo-cli & spaceShooter** - are not licensed to us and neither do we take credit for writing it. It is simply reproduced here for the sole purpose of demonstrating the functionality of above python package with no intention to misuse, discredit or falsify the claim of the author of the code. This article does not partake in monetary operations through the use of the copied code. All relevant authors and organisation are properly credited at the bottom of the document.
>
> In case of any conflict or to report a mistake, please mail the same to the owner of this repository or raise an issue.

PyInstaller is the python application builder which pacakges together all the code and package dependencies adn present sus with an executable taht can be run on the system without even having python installed.

It does so by going through all our code, collecting all the module dependencies and shipping it out in a single package along with the python interpreter itself.
However it does not generates cross pltaform application. We have to the run the smae script with each OS (Windows, macOS and linux) on the same code to generate their native executables.
It is compatible with many sophisticated libraries like Django, PyQt5 and uses native libraries of the system to generate final application, thus giving good performance too.

## Installation

To install this tool and use it in your system, first make sure you have **Python** and **pip** properly set up in your system.
It works on both python 2 and 3, but as python2 is obsolete, please refrain from using it.

After that just head over to the terminal/cmd and run the following pip command to install the **pyinstaller** package.

```bash
pip install PyInstaller
```

If you are keen on using anaconda, then first activate your needed environment and install the package from conda forge

```bash
conda install -c conda-forge pyinstaller
```

## Run PyInstaller

PyInstaller is a good enough for packaging bother command line base and GUI based applications. With a combination of cli flags taht can be used with this python package we can have our application packaged in many a different ways.

## Creating an executable for a python CLI program

So inside our todo-list folder we have a single python file **app.py** which is written by the folks at [Team Treehouse](https://teamtreehouse.com/). It interacts with the user through the command line terminal and the todo list items are all stored inside an SQLite database in the same directory

We will use the follwing command using the PyInstaller to package that python app into a single executable file which calls upon a CLI window for input. It will automatically take care of all the dependecies, like the database package, etc

```bash
pyinstaller --onefile app.py
```

The --onefile flag makes sure that we only get one executable file and not a whole folder with the dependecies and code split up. This command will create abunch of files and folders in the same directory.

1. **build** : It basically conatins a lot of mid development files of the application build, including the intermediate code, managed dependencies,etc. It is most of time not required
2. **dist** : folder that contains the actual application.
3. **spec file** : I dont know about and it is not reuqired as well

## Creating an application from a GUI program

Here in the spaceShooter/spaceShooter directory we have the code which will run the said GUI game built using PyGame. All the assets are same folder. We will create a similiar single file executable and make sure that the terminal window doesn't open up when we run the executable

```bash
py
```

## Refrences

1. [How to Convert any Python File to .EXE](https://www.youtube.com/watch?v=UZX5kH72Yx4&list=PLMboSA8wsgUHjkgEsUFKIUkpxIGsbDtfb&index=12&t=3s)

2. [PyInstaller 3.6 - PyPi](https://pypi.org/project/PyInstaller/)

3. [To-do list app in Python](https://teamtreehouse.com/community/todo-list-app-in-python)

## Credited Authors

1. [Team Treehouse](https://teamtreehouse.com/)
