# A demo class representing a student entity with a number of details
class Student:
    # A protected member which cant be accessed by dot operator
    # But to still access it: Object._class__member
    __id = "sadasd"

    # Constructor
    def __init__(self, name, major, gpa, probation):
        self.name = name
        self.major = major
        self.gpa = gpa
        self.probation = probation

    # A method
    def performance(self):
        if self.gpa >= 3.0:
            return "Performing good"
        else:
            return "Need improvement"

    # Destructor
    def __del__(self):
        print("Student object being destroyed")
