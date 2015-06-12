def swingers(couples)
    couples.each_with_index do |couple, index|
    	if couples[index + 1]
    	    swap = couple[1]
    	    couple[1] = couples[index + 1][1]
    	    couples[index + 1][1] = swap
    	end
    end
end

puts swingers([["Clyde", "Bonnie"],["Paris", "Helen"], ["Romeo", "Juliet"]
]).to_s