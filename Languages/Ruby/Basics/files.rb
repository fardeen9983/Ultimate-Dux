# File I/O
# In ruby we have an inbuilt collection of classes with features taht enable us to manipulate files
# The main calss amongst these is File. It has variety of options to open a file, read from it and write as well

# Opening a file - Make sure the file is provided in the same folder as the ruby file or else provide the full path to the file
# Pass the file name as parameter to the open function defined in the File class
# There are various modes as to how we open we file. We can pass r for reading, w for writing, etc
File.open("data.txt", "r") do |file|
  # Now we have a variable that depicts the file we opened

  # Print the file in the format Ruby interprets it
  puts file

  # The filesystem uses a pointer to track what has been read and what portion of file is remaining
  # The cursor moves as we read or write data

  # Read one character from file
  puts "\nFirst character : " + file.readchar()

  # Read one line from the file
  # Misses the first cahracter as it has been read already and the pointer has moved past that
  puts "First line : \n" + file.readline()

  # Print the contents of the file
  # The cursor has moved to the second line so first one will be skipped
  # Uses the read function which returns entire file content as string
  puts "File contents:\n" + file.read()

  # Once you read all the file content, you will have reach the end of file
  # Any read operations will lead to error as there is nothing to read anymore

end
# Can no longer use the file below

# Reopen the file
File.open("data.txt", "r") do |file|
  # Read all the lines as array of strings
  file.readlines().each_with_index do |line, index|
    puts "Line #{index + 1} : #{line}"
  end
end

# Use the file variable outside
file = File.open("data.txt", "r")
# We can perform all operations we did in the file blog
# Remember to close the file when no longer used
file.close()

# Writing to a file
# First step is to open the file this time eith the "w" flag for write. But this erase all existing content and create a new file if it doesnt exist
# The better way is to append to the content of the file, if deletion is not an option. Use the flag "a" in that case
File.open("data.txt", "a") do |file|
  file.write("\nThe sun is brighter today")
end

# Creating a new File
# It is as simplee as opening anew file with "w" flag
# In this case as the file doesnt exist already, it will be created first and then opened
File.open("new.txt", "w") do |file|
  file.write("\nThe sun is brighter today")
end

# The read and write mode
# So by using the "r+" flag we open the file with both read and wirte option. We start from the beginning of the file
File.open("data.txt", "r+") do |file|
  # Skip 2 lines
  2.times do
    file.readline()
  end
  file.write("Overwrite 3rd line")
end
