from kivy.app import App
# Instead of importing direct widgets we import the generic Wigdet class
from kivy.uix.widget import Widget


class CustomGrid(Widget):
    pass


class MainApp(App):
    def build(self):
        return CustomGrid()


if __name__ == '__main__':
    MainApp().run()
