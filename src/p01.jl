# Project Euler Problem 1 - Connor Mclaughlin
# Problem found at projecteuler.net/problem=1

module ProjectEuler

# naive solution
function p1()
    solution = 0
    for i = 1:999
        if i % 3 == 0 || i % 5 == 0
            solution += i
        end
    end
    return solution
end

println(p1())

# a better approach
function sum_multiples_below(multiple, upper_bound)
    solution = 0
    for i = 0:multiple:upper_bound
        solution += i
    end
    return solution
end

function p1_fast()
    return sum_multiples_below(3, 999) + sum_multiples_below(5, 999) - sum_multiples_below(15, 999)
end

println(p1_fast())

end
