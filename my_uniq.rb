class Array
	def my_uniq
		results = []
		self.each do |i|
			if !(results.include? i)
				results.push i
			end
		end
		return results        
	end
end

puts [1,2,3,3,3,4,5,2,1,1].my_uniq