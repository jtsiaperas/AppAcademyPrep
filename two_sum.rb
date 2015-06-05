def two_sum (nums)
    outer = 0
    while outer < nums.length
        inner = outer + 1
        while inner < nums.length
            if nums[outer] + nums[inner] == 0
                return true
            end
            inner += 1
        end
        outer += 1
    end
    return false       
end

puts two_sum [-5,0,5]
puts two_sum [0,0,1]
puts two_sum [1,2,3]