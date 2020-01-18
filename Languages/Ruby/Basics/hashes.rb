# Hashes
# Key value pairs defined using {}

# Structure - key => value
values = {
    1 => "One",
    2 => "Two",
    3 => "Three"
}
puts values

# Other way to write a hash using :
# Structure - :key => value
# only applicable for string keys
other = {
    :one => 1,
    :two => 2,
    :three => 3
}
puts other

# Get a single value from key
puts values[1]
puts other[:one]