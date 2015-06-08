def hanoi
    puts "*************TOWERS OF HANOI**************"
    towers = Array.new
    towers[1] = [0]
    towers[2] = [0]
    towers[3] = [0,10,8,6,4,2]
    display(towers)
    range_error = "Invalid move, number out of range. Should be 1, 2, or 3!"
    empty_error = "Invalid move, the first tower can't be empty!"
    too_big_error = "Invalid move, the top disc can't be bigger than the bottom!"
    input_error = "Invalid input, must be in the form 2 3!"
    puts "The goal of the game is to move all the discs from tower 3 to tower 1"
    puts "Enter your move in the form of two numbers, such as 3 2."
    puts "This will move the top disc from tower 3 to tower 2."
    while towers[1] != [0,10,8,6,4,2]
        puts "Enter your move: "
        move = gets.chomp
        move = move.split
        if move[0] && move[1]
            move[0] = move[0].to_i
            move[1] = move[1].to_i
            if move[0] > 3 || move[1] > 3 || move[0] < 1 || move[1] <1
            	puts range_error
            elsif towers[move[0]][-1] == 0
        	    puts empty_error
            elsif towers[move[1]][-1] == 0
                towers[move[1]].push(towers[move[0]].pop)
            elsif towers[move[0]][-1] > towers[move[1]][-1]
                puts too_big_error
            else
                towers[move[1]].push(towers[move[0]].pop)
            end
        else
            puts input_error   
        end
        display(towers)
    end
    puts "Congratulations! You win! Would you like to play again? y/n?"
    yes_or_no = gets.chomp
    if yes_or_no.downcase == 'y'
    	hanoi
    end
end

def display(towers)
    tower_width = 14
    blank = " "
    num_blank = 0
    line = ""
    for i in 1..3
        line += i.to_s * tower_width
    end
    puts line
    for i in 1..5
        #ruby doesn't do reverse loops so just hack it
        i = 6-i
        #reset line
        line = ""
        for j in 1..3
        	if towers[j][i]
                num_blank = (tower_width - towers[j][i])/2
                line += (blank * num_blank) + ("-" * towers[j][i]) + (blank * num_blank)
            else
        	    line += blank * tower_width
            end
        end
        #display the line
        puts line
    end
    line = ""
    for i in 1..3
        line += i.to_s * tower_width
    end
    puts line
end
        
hanoi
