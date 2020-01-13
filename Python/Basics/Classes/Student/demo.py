from Classes.Student.Student import Student

# Create an object of the Student class
student1 = Student('Fardeen', 'CP', 3.8, False)
print(student1)

# Print the student's details
print(student1.gpa)

# Call a function on student obj
print(student1.performance())

# Delete the Student Object
del student1
