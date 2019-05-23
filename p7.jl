# Project Euler Problem 7 - Connor Mclaughlin
# Problem found at projecteuler.net/problem=7

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

function nth_prime(n, limit)
    primes = prime_sieve(limit)
    return primes[n]
end

function p7()
    return nth_prime(10001, 300000)
end

println(p7())
