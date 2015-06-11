#!/usr/bin/env ruby
class Integer 
	def in_words
	    num_hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 
	    	6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 
	    	12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 =>"sixteen",
	        17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty",
	        40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety",
	        100 => "hundred", 1000 => "thousand", 1000000 => "million", 1000000000 => "billion", 
	        1000000000000 => "trillion"}
        if self == 0
        	return "zero"
        end
        number_str = ""
        number = self
        while number > 0
            
            if number > 10 ** 12
            	number_str += "#{(number/ (10 ** 12)).in_words} #{num_hash[10 ** 12]}"
            	if number % (10 ** 12) != 0
            		number_str += " "
            	end
            	number = number % (10 ** 12)
            elsif number == 10 ** 12 || number == 10 ** 9 || number == 10 ** 6 || number == 10 ** 3 || number == 10 ** 2
            	return number_str += "one #{num_hash [number]}"
            elsif number > 10 ** 9
            	number_str += "#{(number/ (10 ** 9)).in_words} #{num_hash[10 ** 9]}"
            	if number % (10 ** 9) != 0
            		number_str += " "
            	end
            	number = number % (10 ** 9)
            elsif number > 10 ** 6
            	number_str += "#{(number/ (10 ** 6)).in_words} #{num_hash[10 ** 6]}"
            	if number % (10 ** 6) != 0
            		number_str += " "
            	end
            	number = number % (10 ** 6)
            elsif number > 10 ** 3
            	number_str += "#{(number/ (10 ** 3)).in_words} #{num_hash[10 ** 3]}"
            	if number % (10 ** 3) != 0
            		number_str += " "
            	end
            	number = number % (10 ** 3)
            elsif number > 10 ** 2
                number_str += "#{(number/ (10 ** 2)).in_words} #{num_hash[10 ** 2]}"
            	if number % (10 ** 2) != 0
            		number_str += " "
            	end
            	number = number % (10 ** 2)
            elsif number > 19
                if number % 10 == 0
                    return number_str + "#{num_hash[(number / 10) * 10]}"
                else
                    return number_str + "#{num_hash[(number / 10) * 10]} #{num_hash[number % 10]}"
                end
            else 
            	return number_str += "#{num_hash[number]}"
            end

        end
        return number_str
	end
end


