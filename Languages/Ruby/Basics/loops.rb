# Loops

# While loop
# It executes it's body until the given condition remains satisfied

# Control variable
index = 0

while index < 10
  puts "Index value : " + index.to_s
  # Updating the control variable
  index += 2
end

# For loops
# They are mostly used for iterating through a range of values or through collections like arrays, hashes

# Loop through a range of values
for index in 0..10
  print index.to_s + ", "
end
puts

# Using times to loop throug range
10.times do |num|
  print "Number is #{num}, "
end

# Collection
names = ["Shabana", "Shehensa", "Baazigar", "Don", "Shaktimaan"]

# Loop through array using index
for index in 0..(names.length() - 1)
  print names[index] + ", "
end
puts

# Loop throught the array and print elements
for name in names
  print name + ", "
end
puts

# The above thing can be done similiarly by using a for each loop
names.each do |name|
  print name + ", "
end
puts

# Iterate with value and index
names.each_with_index do |name, index|
  print "#{index} : #{name} , "
end
puts
