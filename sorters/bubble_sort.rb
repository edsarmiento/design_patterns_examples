class Bubble
	def sort(array)	
		len = array.length

		loop do
			sorted = true

			array.each_index do |index|
				break if index + 1 == len

				if array[index] > array[index + 1]
					array[index], array[index + 1] = array[index + 1],array[index]
					sorted = false
				end
			end
			break if sorted
		end

		array
	end
end

array = [6,8,22,5,4,3,30,7]
bubble = Bubble.new

print bubble.sort(array)