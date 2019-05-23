# Project Euler Problem 10 - Connor Mclaughlin
# Problem found at projecteuler.net/problem=10

function is_coprime(arr, x)
    return !any(i -> x % i == 0, arr)
end

function prime_sieve(n)
    arr = Int[]
    for i = 2:n
        if is_coprime(arr, i)
            push!(arr, i)
        end
    end
    return arr
end

function p10(n)
    sum = 0
    arr = prime_sieve(n)
    for prime in arr
        sum += prime
    end
    return sum
end

println(p10(2000000))
