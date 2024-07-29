string = "holamundo"

aux = []
array = string.split('')

array.size.times do |counter|
	aux[counter] = array[array.size - (counter + 1)]

	counter += 1
end

puts aux.join
