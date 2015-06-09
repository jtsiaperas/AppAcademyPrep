wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }

def hash_correct (hash)
	correct = {}
    hash.each do |key, value|
        correct[value[0].to_sym] = value
    end
	return correct
end

puts hash_correct(wrong_hash).to_s