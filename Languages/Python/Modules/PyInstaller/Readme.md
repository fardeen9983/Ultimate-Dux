# PyInstaller

> Disclamer : The python code used in this section of the repository placed in the folders : **todo-cli & pygame-demo**  - are not licensed to us and neither do we take credit for writing it. It is simply reproduced here for the sole purpose of demonstrating the functionality of above python package with no intention to misuse, discredit or falsify the claim of the author of the code. This article does not partake in monetary operations through the use of the copied code. All relevant authors and organisation are properly credited at the bottom of the document.
>
>In case of any conflict or to report a mistake, please mail the same to the owner of this repository or raise an issue.

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

PyInstaller is a good enough for packaging bother command line base and GUI based applications. With a combination of cli flags taht can be used with this python package we can have our application packaged in many a different ways

## Refrences

1. [How to Convert any Python File to .EXE](https://www.youtube.com/watch?v=UZX5kH72Yx4&list=PLMboSA8wsgUHjkgEsUFKIUkpxIGsbDtfb&index=12&t=3s)

2. [PyInstaller 3.6 - PyPi](https://pypi.org/project/PyInstaller/)

3. [To-do list app in Python](https://teamtreehouse.com/community/todo-list-app-in-python)

## Credited Authors

1. [Team Treehouse](https://teamtreehouse.com/)