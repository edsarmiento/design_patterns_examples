require 'byebug'

def sum(arr)
    return 0 if arr.empty?
byebug
    arr[0] + sum(arr[1..-1])
end

input = [1, 2, 3, 4, 5]
result = sum(input)
puts result

