# Project Euler Problem 4 - Connor Mclaughlin
# Problem found at projecteuler.net/problem=4

function is_palindrome(n)
    str_n = string(n)
    l = length(str_n)
    s, e = 1, l
    while s <= l
        if str_n[s] != str_n[e]
            return false
        end
        s += 1
        e -= 1
    end
    return true
end

function p4()
    solution = 0
    for x = 100:999
        for y = 100:999
            product = x * y
            if is_palindrome(product) && product > solution
                solution = product
            end
        end
    end
    return solution
end

println(p4())
