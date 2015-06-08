def my_transpose(matrix)
	transposed = [[0,0,0],[0,0,0],[0,0,0]]
	for i in 0..2
        for j in 0..2
        	transposed[j][i] = matrix[i][j]
        end
    end
    return transposed
end

test_matrix = [[1,2,3],[4,5,6],[7,8,9]]
puts my_transpose(test_matrix) == [[1,4,7],[2,5,8],[3,6,9]]
