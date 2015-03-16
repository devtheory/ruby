array = [1,2,3]

# "puts" inserts a newline after each iteration
array.each do |el|
    puts el
end

# "prints" will not add a newline
array.each do |el|
    prints el, " "
end

# gsub regex
string = "th#e br05wn f*ox"
no_special_characters = string.gsub(/[^ 0-9a-zA-Z]/, '') #^ performs negation. Replaces every character not in the regex with nothing. Does not mutate
only_special_characters = string.gsub!(/[ 0-9a-zA-Z]/, '') # replaces every character in the regex with nothing. mutates string!