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