"""
Read and dat data to/from a file
method : open
arg0 : file path (Absolute/Relative path)
arg1 : Mode of opening file ( 'r' : read, 'w' : write, 'a' : append, 'r+' : R&W,etc)
returns IO file
"""
file = open("example.txt", 'r')

# Determine if the file is readable. Returns true if opened in read mode only
readable = file.readable()
print(readable)

# Read all the contents of the file at once
print(file.read())

# Read just a line instead of the whole file. And also do it line by line.
# So it needs to be called a multiple times till the file ends
print(file.readline())
print(file.readline())

# Use readlines() to read all the lines at once. It returns all the lines of the file into a list
print(file.readlines())
for line in file.readlines():
    print(line, end='')

# Remember to close the file as well when no longer used.
file.close()

"""
Writing and appending to an existing or a new file
"""
# Opening file in append mode. Creates a new file if it doesn't exists
file = open('example.txt', 'a')
if file.writable():
    file.write("\nasdadadasdasdasdasdasd")
file.close()

# Writing to a file in mode 'w' overwrites all it's content
file = open('example.txt', 'w')
file.write("Overwritten")
file.close()

# Writing to a non existent file in mode 'w' creates a new one
file = open('example1.txt', 'w')
file.write("Overwritten")
file.close()
