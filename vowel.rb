
 vowels = ["a", "e", "y", "u", "i", "o"]
 result = Hash.new

("a".."z").map.with_index do |letter, index|
    if vowels.include?(letter)
        result[letter] = index + 1
    end
 end


 puts result
