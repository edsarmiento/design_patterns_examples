# Input: 123,27,151,323,32
# Weight: 6,9,7,8,5
# Output: 32,123,151,323,27

array = [123,27,151,323,32]
weights = []
obj_aux = {}
result = []

array.each do |value|
    min_aux = []
    values = value.to_s.split('')
    values.each do |element|
      min_aux << element.to_i
    end

    weights << min_aux.sum
    obj_aux[min_aux.sum] = value
end

weights.sort.each do |value|
  result << obj_aux[value]
end

print result
