def sum_array(array)
    return 0 if array.empty?

    element = array[0]
    array[0] + sum_array(array[1 .. -1])
end

array = [1, 2, 3, 4, 5]
puts sum_array(array)