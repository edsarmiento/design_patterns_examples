def word_pattern(pattern, string)
  splitted_string = string.split
  return false if pattern.size != splitted_string.size
 
  pattern_to_word, word_to_pattern = {}, {}
  pattern.chars.each_with_index do |char, index|
    word = splitted_string[index]
    return false if pattern_to_word[char] && pattern_to_word[char] != word
    return false if word_to_pattern[word] && word_to_pattern[word] != char
    
    pattern_to_word[char] = word
    word_to_pattern[word] = char
  end
  
  true
end

puts word_pattern('abab', 'truck car truck car')  # true
puts word_pattern('aaaa', 'dog dog dog dog')      # true
puts word_pattern('abab', 'apple banana banana apple')  # false
puts word_pattern('aaaa', 'cat cat dog cat')      # false
