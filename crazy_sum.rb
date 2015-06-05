def crazy_sum (numbers)
    sum = 0
    i = 0
    while i < numbers.length
        sum += (numbers[i] * i)
        i += 1
    end
    return sum
end

puts (crazy_sum([2,3,5,2]))

def square_nums(max)
    count = 0
    i = 1
    while (i * i) < max
        count += 1
        i += 1
    end
    return count
end

puts (square_nums (5))

def crazy_nums(max)
    results = []
    i = 1
    index = 0
    while i < max
        if (i % 3 == 0) && (i % 5 == 0)

        elsif (i % 3 == 0) || (i % 5 == 0)
            results[index] = i
            index += 1
        end
        i += 1
    end
    return results
end

puts crazy_nums(3)
puts crazy_nums(10)
puts crazy_nums(20)