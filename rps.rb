def rps(input)
	throw_hash = {"Rock" => 0, "Paper" => 1, "Scissors" => 2}
	computer_throw = rand(3)
	player_throw = throw_hash[input]
	if player_throw == computer_throw
		return "#{input}, Draw"
	elsif computer_throw - player_throw == 1 || computer_throw - player_throw == -2
		return "#{throw_hash.invert[computer_throw]}, Lose"
	else
		return "#{throw_hash.invert[computer_throw]}, Win"
    end
end
puts rps("Rock")
puts rps("Scissors")
puts rps("Paper")
puts rps("Rock")
puts rps("Scissors")
puts rps("Paper")
puts rps("Rock")
puts rps("Scissors")
puts rps("Paper")