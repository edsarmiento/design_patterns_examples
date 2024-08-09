# frozen_string_literal: true

def first_factorial(num)
  aux = []
  result = 1

  num.times { |number| aux << number + 1 }
  aux.each { |number|	result *= number }

  result
end

puts first_factorial 10
