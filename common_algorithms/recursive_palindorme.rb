def palindrome_eval(word)
    return true if word.size <= 1
    return false if word[0] != word[-1]

    palindrome_eval(word[1..-2])
end

result = palindrome_eval('cbasbsabc')
puts result