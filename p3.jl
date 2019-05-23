# Project Euler Problem 3 - Connor Mclaughlin
# Problem found at projecteuler.net/problem=3

function p3(n)
    max_factor = 0
    upper_bound = round(n^(1/2)) + 1
    for i = 2:upper_bound
        if n % i == 0
            if i > max_factor
                max_factor = i
            end
            n /= i
        end
        if n == 0
            break
        end
    end
    return max_factor
end

println(p3(600851475143))
