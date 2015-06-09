    def set_add_el(hash, add_key)
	    if !hash.has_key?(add_key)
	        hash[add_key] = true
	        return hash
	    end	
	end
	def set_remove_el(hash, remove_key)
	    if hash.has_key?(remove_key)
	    	hash.delete(remove_key)
	        return hash
	    end	
	end
	def set_list_els(hash)
	    return hash.keys
	end
	def set_member?(hash, test_key)
	    if hash.has_key?(test_key)
	    	return true
	    end
	    return false
	end
	def set_union(hash1, hash2)
		union = {}
        hash2.each do |key, value|
        	if !hash1.has_key?(key)
        		union[key] = value
        	end
        end
        union.merge(hash1)
		return union
	end
	def set_intersection(hash1, hash2)
		intersection = {}
   		hash2.each do |key, value|
        	if hash1.has_key?(key)
        		intersection[key] = value
        	end
        end
		return intersection
	end
	def set_minus(hash1, hash2)
        minus = {}
        hash1.each do |key, value|
        	if !hash2.has_key?(key)
        		minus[key] = value
        	end
        end
        return minus
    end


set1 = {1 => true, 2 => true}
set_add_el(set1, 3)
puts "Added 3" + set_list_els(set1).to_s
set_remove_el(set1, 1)
puts "Removed 1" + set_list_els(set1).to_s
set2 = {1 => true, 9 => true, 2 => true}
union = set_union(set1, set2)
puts "Union" + set_list_els(union).to_s
intersection = set_intersection(set1, set2) 
puts "Intersection" + set_list_els(intersection).to_s
minus = set_minus(set1,set2)
puts "Minus" + set_list_els(minus).to_s