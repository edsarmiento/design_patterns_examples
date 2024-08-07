# frozen_string_literal: true

# inject numbers
arr = [1, 3, 4, 5, 6, 7, 9]
result = arr.inject(0) do |accum, num|
  accum + num
end

puts 'both are same result'
print result
puts "\n"
puts arr.sum

# inject strings
arr = ['hola', 'mundo', 'how are', 'you']
result = arr.inject('') do |accum, num|
  "#{accum}#{num} "
end

print result
puts "\n"
