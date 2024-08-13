require 'byebug'
def function(arr, index = 0, l_sum = 0, r_sum = nil)
  r_sum ||= arr.sum
  return (l_sum - r_sum).abs if index == arr.length - 1

  l_sum += arr[index]
  r_sum -= arr[index]
    
  current = (l_sum - r_sum).abs
  next_diff = function(arr, index + 1, l_sum, r_sum)

  [current, next_diff].min
end
  
puts function([1, 1, 1, 1, 1, 15])
puts function([3, 6, 4, 7, 3])
puts function([8, 8, 0, 8, 8])