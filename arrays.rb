# Create a new Array
array = [] # Creates an empty array
array = Array.new # Creates an empty array
array = Array.new(3) # Creates [nil, nil, nil]
array = Array.new(3, false) # Creates [false, false, false]
array = Array.new(3) { Hash.new } # Creates [{}, {}, {}]
table = Array.new(3) { Array.new(3) } # Createa [[nil,nil,nil], [nil,nil,nil], [nil,nil,nil]]

# Accessing an array
array = ["first", "second", "third"]
array[0] # returns "first"
array[-1] # returns "third"
array[0, 2] # returns ["first", "second"] where first is start, last is length
array[0..-2] # returns ["first", "second"]
array.fetch(3, "not found") # returns the error if the index is not found
array.first # returns first value in the array
array.last # returns last value in the array
array.take(2) # returns first two elements of array
array.drop(1) # returns array without the first element

# Getting information from an array
array.length || array.size || array.count # returns number of elements in array
array.empty? # returns true if array is empty
array.includes?('four') # returns false

# Adding items to an array
array.push('four') # appends four to the end of the array
array << 'five' # appends five to the end of the array
array.unshift(0) # prepends zero to the beginning of the array
array.insert(2, 'two and a half') # inserts second element at index and shifts the rest down
array.insert(2, "two and a half, two and a quarter") # inserts elements at index

# Removing items from an array
last = array.pop # REMOVES and RETURNS last element in array. Mutates array.
first = array.shift # REMOVES and RETURNS first element in array. Mutates array.
array.delete_at(2) # REMOVES and RETURNS element at index 2
array.delete(2) # REMOVES every instance of the argument in the array
array.compact # REMOVES all nil values. Does NOT mutate array
array.compact! # REMOVES all nil values. Mutates array.
array.uniq # REMOVES duplicated values. Does NOT mutate array
array.uniq! # REMOVES duplicated values. Mutates array.

# Iterating over an array
array = %w[zero one two three] # Creates ["zero", "one", "two", "three"]
array.each do |el| # each does not mutate array.
    puts el
end
array.each {|el| print el, " "}
array.reverse_each {|el| puts el } # Iterates over array in reverse.
array.map {|word| "#{word}!" } # returns array with operation. Does NOT mutate.
array.map! {|word| "#{word}!" } # Mutates the array.

# Selecting items from an array
array = [1,2,3,4,5]
array.select {|el| el > 3 } # returns elements greater than 3. Does NOT mutate.
array.select! {|el| el > 3 } # returns alements greater than 3. Mutates array.
array.select_while {|el| el > 3 } # will grab if condition is met UNTIL it's no longer met ONCE.
array.reject {|el| el < 3 } # ignores elements less than 3, returns the rest. Does NOT mutate.
array.reject! {|el| el < 3 } # ignores elements less than 3, returns the rest. Mutates array.
array.drop_while {|el| el > 3 } # will drop while condition is met UNTIL it's no longer met ONCE.
array.keep_if {|el| el > 3 } # will keep all elements that meet condition. Mutate array
array.delete_if {|el| el > 3 } # will delete if elements meet that condition. Mutates array.



