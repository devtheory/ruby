# Create a new Array
array = [] # Creates an empty array
array = Array.new # Creates an empty array
array = Array.new(3) # Creates [nil, nil, nil]
array = Array.new(3, false) # Creates [false, false, false]
array = Array.new(3) { Hash.new } # Creates [{}, {}, {}]
table = Array.new(3) { Array.new(3) } # Createa [[nil,nil,nil], [nil,nil,nil], [nil,nil,nil]]

# Accessing and array
array = ["first", "second", "third"]
array[0] # returns "first"
array[-1] # returns "third"
array[0, 2] # returns ["first", "second"] where first is start, last is length
array[0..-2] # returns ["first", "second"]
