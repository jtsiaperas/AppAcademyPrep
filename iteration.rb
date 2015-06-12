i = 0 
while i >= 0
	if i > 250 && i % 7 == 0
		puts i
		break
	end
	i += 1
end

(1..100).each do |i|
    puts "Factors of #{i}:"
    j = 1
    while j <= i/2
    	if i % j == 0
    		puts j
    	end
    	j += 1
    end
    puts i
end

class Array
	def bubble_sort
        sorted = self
        correct = 0
        while correct < sorted.count - 1
        correct = 0
        sorted.each_with_index do |number, index|
            j = index + 1
            num2 = sorted[j]
            if num2 
            	if number > num2
            		sorted[j] = number
            		sorted[index] = num2
                else
                	correct += 1
                end

            end
        end
        end
        return sorted
	end
end

puts [1,7,6,2,5,3].bubble_sort.to_s

def substrings(word)
    substrings = []
    (0...word.length).each do |i|
    	(i...word.length).each do |j|
    		substrings << word[i..j]
    	end
    end
    return substrings
end

puts substrings("cat").to_s