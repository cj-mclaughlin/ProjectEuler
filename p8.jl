# Project Euler Problem 8 - Connor Mclaughlin
# Problem found at projecteuler.net/problem=8

function read_num()
    num_string = ""
    open("p8.txt") do file
        for line in eachline(file)
            num_string *= line
        end
    end
    return num_string
end

function find_product(num_string)
    product = 1
    for char in num_string
        int_char = parse(Int8, char)
        product *= int_char
    end
    return product
end

function p8(num_adjacent_digits)
    x = read_num()
    rsf = 10
    first = 1
    last = first + (num_adjacent_digits) - 1
    while last < 1000
        curr_product = find_product(x[first:last])
        if curr_product > rsf
            rsf = curr_product
        end
        first, last = first + 1, last + 1
    end
    return rsf
end

println(p8(13))
