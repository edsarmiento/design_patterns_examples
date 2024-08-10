def fibo(number)
    return number if number <= 1

    fibo(number - 1) + fibo(number - 2)
end

puts fibo(15)