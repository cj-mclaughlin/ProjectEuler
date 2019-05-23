# Project Euler Problem 5 - Connor Mclaughlin
# Problem found at projecteuler.net/problem=5

function prime_factorization(n)
    prime_factors = Dict{Int16,Int16}()
    i = 2
    while n > 1
        if n % i == 0
            if haskey(prime_factors, i)
                prime_factors[i] = prime_factors[i] + 1
            else
                prime_factors[i] = 1
            end
            n /= i
        else
            i += 1
        end
    end
    return prime_factors
end

function p5(lower_bound, upper_bound)
    smallest_multiple = 1
    highest_degree_factors = Dict{Int16, Int16}()
    for i = lower_bound:upper_bound
        i_factors = prime_factorization(i)
        for key in keys(i_factors)
            if !haskey(highest_degree_factors, key)
                highest_degree_factors[key] = i_factors[key]
            else
                if highest_degree_factors[key] < i_factors[key]
                    highest_degree_factors[key] = i_factors[key]
                end
            end
        end
    end
    for (k, v) in highest_degree_factors
        smallest_multiple *= k^v
    end
    return smallest_multiple
end

println(p5(1, 20))
