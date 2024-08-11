class Luhn
  def validate(number)
    array = number.split('')
    numbers = array[0..-2]
    vd = array[-1].to_i
    aux = []

    numbers.each_with_index do |value, index|
      aux << value.to_i * 2 if index.even?
    end

    puts "input:   #{array}"
    puts "numbers: #{numbers}"
    puts "vd:      #{vd}"
    puts "output:  #{aux} is: #{aux.sum}"

    aux.sum % 10 == 0 
  end
end

ln = Luhn.new

puts ln.validate('4539704354706391')
puts ln.validate('5491380223070013')
