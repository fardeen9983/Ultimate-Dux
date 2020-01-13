# Class representing a Rectangle with passed on length and breadth and get back the area
class Rect:
    width = 0
    height = 0

    def __init__(self, length, breadth):
        self.length = length
        self.breadth = breadth

    def get_area(self):
        return self.length * self.breadth


# Inherit class Rect to  get Sqaure : A rectangle with length = breadth
class Sqaure(Rect):
    def __init__(self, side):
        # Call the Super class constructor first
        super().__init__(side, side)
