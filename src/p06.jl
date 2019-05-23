# Project Euler Problem 6 - Connor Mclaughlin
# Problem found at projecteuler.net/problem=6

function p6(n)
    sum_squares = 0
    square_sum = 0
    for i = 1:n
        sum_squares += (i^2)
        square_sum += i
    end
    square_sum ^= 2
    solution = abs(sum_squares - square_sum)
    return solution
end

println(p6(10))
