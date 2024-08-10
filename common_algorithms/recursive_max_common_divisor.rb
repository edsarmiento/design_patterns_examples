def mcd(a, b)
    return a if b == 0

    mcd(b, a % b)
end

puts mcd(48, 18)