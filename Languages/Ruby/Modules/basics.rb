# Simple ruby program

# Use require function to import a module and use it here
# While require gives you access to globally available modules, we can use require_relative to find modules in the same folder

require_relative "simple_module.rb"
# All the code in that file will be run by default.
# So you may see a print statement from that file work its way here

# Now we can use include to access that module
# We can ignore the below line as such a code already exists in simple_module.rb which by default exports the Simple variable
# But this may not be true always
include Simple
puts "Sum of 3 and 5 : #{Simple.add(3, 5)}"

