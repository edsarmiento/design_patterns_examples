def fibo(num)

    memo = [0,1]

    for current in 2..num do
        memo[current] = memo[current -1] + memo[current -2]
    end

    return memo
end

puts fibo(50)