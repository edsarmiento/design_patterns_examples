
def reverse_string(str)
    return '' if str.empty?

    initial_char = str[0]
    rest_string = str[1..-1]

    reverseRest = reverse_string(rest_string)
    reverseRest + initial_char
end

puts reverse_string('hola mundo')