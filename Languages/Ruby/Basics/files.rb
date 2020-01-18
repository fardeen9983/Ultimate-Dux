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
