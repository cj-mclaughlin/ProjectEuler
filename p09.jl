# Project Euler Problem 9 - Connor Mclaughlin
# Problem found at projecteuler.net/problem=9

function is_pythag_triple(a, b, c)
    if a^2 + b^2 == c^2
        return true
    else
        return false
    end
end

function p9()
    for a = 3:333
        for b = a+1:499
            for c = b+1:998
                if is_pythag_triple(a, b, c)
                    if a + b + c == 1000
                        println(a, b, c)
                        return a*b*c
                    end
                end
            end
        end
    end
end

println(p9())
