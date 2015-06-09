def double_array(array)
    return array.map { |i| 2*i }
end
def array_median(array)
    i = (array.count / 2) 
    if array.count % 2 == 1
        return array[i]
    else
        return (array[i] + array[i-1])/2
    end
end

def concatenate(array)
	return array.inject(:+)
end

puts double_array([1,2,3,4,5]).to_s
puts array_median([1,2,3,4,5]).to_s
puts array_median([1,2,9,4,5,6]).to_s
puts concatenate(["It's ", "a ", "trap!"])