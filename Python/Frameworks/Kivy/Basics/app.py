# Kivy app
from kivy.app import App

# UI widgets
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button


# Custom GridLayout implementation
class CustomGrid(GridLayout):
    # constructor
    def __init__(self, **kwargs):
        # Call super class (GridLayout) constructor first
        super(CustomGrid, self).__init__(**kwargs)
        self.cols =1        
        # Create an inner grid layout to house form fields and labels. (As colspan kind of thing is not available)
        self.inner = GridLayout()
        
        # Set columns in GridLayout
        self.inner.cols = 2

        # Adding widgets to our layout
        self.inner.add_widget(Label(text="First Name : "))
        # Create local  text input field with single line input
        self.first_name = TextInput(text='', multiline=False)
        # Add the text input widget
        self.inner.add_widget(self.first_name)

        # Create other fields
        self.inner.add_widget(Label(text="Last Name : "))
        self.last_name = TextInput(text='', multiline=False)
        self.inner.add_widget(self.last_name)

        self.inner.add_widget(Label(text="Email : "))
        self.email = TextInput(text='', multiline=False)
        self.inner.add_widget(self.email)

        # Add the inner grid as element of main grid
        self.add_widget(self.inner)

        # Create a submit button
        self.submit = Button(text="Submit",font_size=40)
        self.add_widget(self.submit)

# The main class that is our entire application
class MyApp(App):
    # returns a window that is our Kivy application
    def build(self):
        # Return our compliacted widget composition
        return CustomGrid()


if __name__ == '__main__':
    MyApp().run()
