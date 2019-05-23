# Project Euler Problem 11 - Connor Mclaughlin
# Problem found at projecteuler.net/problem=11

function read_array()
    arr = Array{Int32, 2}(undef, 20, 20)
    open("p11.txt") do file
        curr_line = 1
        for line in eachline(file)
            line_length = length(line)
            curr_num = 1
            first = 1
            last = first + 2
            while true
                if last > line_length
                    last = line_length
                end
                if curr_num > 20  # safety check
                    break
                end
                arr[curr_line, curr_num] = parse(Int8, line[first:last])
                curr_num += 1
                first, last = first + 3, last + 3
            end
            curr_line += 1
        end
    end
    return arr
end

function p11(arr)
    rsf = 0
    for x in 1:20
        for y in 1:20
            if x + 3 <= 20 # can look right
                horizontal = arr[x, y] * arr[x+1, y] * arr[x+2, y] * arr[x+3, y]
                if horizontal > rsf
                    rsf = horizontal
                end
            end

            if y + 3 <= 20 # can look down
                vertical = arr[x, y] * arr[x, y+1] * arr[x, y+2] * arr[x, y+3]
                if vertical > rsf
                    rsf = vertical
                end
            end

            if x + 3 <= 20 && y + 3 <= 20 # down-right diagonal
                diag1 = arr[x, y] * arr[x+1, y+1] * arr[x+2, y+2] * arr[x+3, y+3]
                if diag1 > rsf
                    rsf = diag1
                end
            end

            if x - 3 >= 1 && y + 3 <= 20 # down-left diagonal
                diag2 = arr[x, y] * arr[x-1, y+1] * arr[x-2, y+2] * arr[x-3, y+3]
                if diag2 > rsf
                    rsf = diag2
                end
            end
        end
    end
    return rsf
end

array = read_array()
println(p11(array))
