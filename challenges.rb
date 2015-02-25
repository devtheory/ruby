# Reverse a string
def reverse_string(str)
    str.reverse
end

# Find factorial of a number
def factorial(num)
    result = 0
    
    while num > 0
        result = result == 0 ? num * 1 : result * num
        num = num - 1
    end
    result
end

# Return longest word in String
def longest_word(string)
    longest = ""
    sen_array = string.gsub(/[^ A-Za-z]/, '').split
    
    for word in sen_array do
        longest = longest.length < word.length ? word : longest
    end
    longest
end

# Replace letters in String with next letter in alphabet. Capitalize vowels
def letter_changes(str)
    alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z] # creates an array with all letters in the alphabet
    
    element_array = str.downcase.split('') #normalizes the string and then splits at every element into array
    new_array = [] # holder
    
    element_array.each do |el|
        # if the element is not a letter, add it. else if its z, add A. else, get the index of the element and add the next letter in the alphabet
        new_array << (!alphabet.include?(el) ? el : (el == 'z' ? 'A' : alphabet[alphabet.index(el) + 1]))
    end
    # capitalize all vowels and return the new string
    new_array.join.gsub!(/[aeiou]/, 'a' => 'A', 'e' => 'E', 'i' => 'I', 'o' => 'O', 'u' => 'U')
end

# Add all numbers from 1 to Num and return result
def simple_adding(num)
    result = 0
    1.upto(num) {|number| result = result + 1 }
    result
end

# Capitalize the first letter of every word in a String
def letter_capitalize(str)
    str.split(" ").map {|word| word.capitalize }.join(" ")
end