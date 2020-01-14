from kivy.app import App
# Instead of importing direct widgets we import the generic Wigdet class
from kivy.uix.widget import Widget
# Connect properties from kv file to python file
from kivy.properties import ObjectProperty


class CustomGrid(Widget):
    # Initially set the property to be None
    # Also make sure to keep the object property's name same everywhere
    name = ObjectProperty(None)
    email = ObjectProperty(None)

    # button pressed event callback
    def btn_pressed(self):
        print("Btn pressed => name : {name}, email : {email}".format(
            name=self.name.text, email=self.name.text))
        # Reset the params
        self.name.text = ""
        self.email.text = ""


class MainApp(App):
    def build(self):
        return CustomGrid()


if __name__ == '__main__':
    MainApp().run()
