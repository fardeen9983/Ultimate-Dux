from kivy.app import App
from kivy.uix.widget import Widget
from kivy.properties import ObjectProperty

class Touch(Widget):

    btn = ObjectProperty(None)

    # The default touch callbacks in all the Kivy widgets
    def on_touch_down(self, touch):
        print("Mouse Down", touch)
        self.btn.opacity = 0.5

        # Removing default touch behaviour
        # return super().on_touch_down(touch)

    def on_touch_move(self, touch):
        print("Mouse Move", touch)
        return super().on_touch_move(touch)

    def on_touch_up(self, touch):
        print("Mouse Up", touch)
        self.btn.opacity = 1

        # return super().on_touch_up(touch)


class MainApp(App):
    def build(self):
        return Touch() 


if __name__ == "__main__":
    MainApp().run()
