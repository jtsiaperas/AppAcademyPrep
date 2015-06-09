

def num_to_s (num, base)
	num_hash = { 0=> "0",1=> "1", 2=> "2", 3=> "3", 4=> "4", 5=> "5", 6=> "6",
7=> "7", 8=> "8", 9=> "9", 10=> "A", 11=> "B", 12=> "C", 13=> "D", 14=> "E", 15=> "F"}
	if num < base
		return num_hash[num]
	else
		num_str =""
		digits = 0
		i = 0
		while base ** i <= num
			num_str += num_hash [(num / base ** digits) % base]
			digits += 1
			i += 1
		end
	end
	return num_str.reverse
end

puts num_to_s(8, 2) 
puts num_to_s(6, 2)
puts num_to_s(10, 3)