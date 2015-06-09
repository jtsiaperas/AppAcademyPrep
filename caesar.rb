def caesar (word, num)
    code_word = ""
    for i in 0..word.length-1
    	letter = word[i].ord
        if letter + num > 122
        	letter = letter + num - 122
        else
        	letter = letter + num
        end
        code_word[i] = letter.chr
    end
    return code_word
end

puts caesar("hello", 3)