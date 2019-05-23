# Project Euler Problem 2 - Connor Mclaughlin
# Problem found at projecteuler.net/problem=2

function p2()
    solution = 0
    x, y = 1, 2
    while y < 4000000
        if y % 2 == 0
            solution += y
        end
        x, y = y, x + y
    end
    return solution
end

println(p2())
