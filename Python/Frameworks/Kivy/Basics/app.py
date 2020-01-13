import kivy
from kivy.app import App
from kivy.uix.label import Label


class MyApp(App):
    def build(self):
        return Label(text="Kivy Example")


if __name__ == '__main__':
    MyApp().run()
