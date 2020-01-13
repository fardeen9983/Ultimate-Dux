# Kivy app
from kivy.app import App

# UI widgets
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput


# Custom GridLayout implementation
class CustomGrid(GridLayout):
    # constructor
    def __init__(self, **kwargs):
        # Call super class (GridLayout) constructor first
        super(CustomGrid, self).__init__(**kwargs)

        # Set columns in GridLayout
        self.cols = 2

        # Adding widgets to our layout
        self.add_widget(Label(text="First Name : "))
        # Create local  text input field with single line input
        self.first_name = TextInput(text='', multiline=False)
        # Add the text input widget
        self.add_widget(self.first_name)

        # Create other fields
        self.add_widget(Label(text="Last Name : "))
        self.last_name = TextInput(text='', multiline=False)
        self.add_widget(self.last_name)

        self.add_widget(Label(text="Email : "))
        self.email = TextInput(text='', multiline=False)
        self.add_widget(self.email)

        

# The main class that is our entire application
class MyApp(App):
    # returns a window that is our Kivy application
    def build(self):
        # Return our compliacted widget composition
        return CustomGrid()


if __name__ == '__main__':
    MyApp().run()
