def MaximalSquare(strArr)

	# display board
	puts strArr
	
	result = 0
	# convert string array into integer matrix and find largest square
	strArr.each_with_index do |row, i|
		strArr[i] = row.split(//)
		strArr[i].each_with_index do |column, j|
			strArr[i][j] = column.to_i
			if i == 0 || j == 0
			elsif strArr[i][j] > 0
				# checks values up, left, and up-left
				strArr[i][j] = 1 + [strArr[i][j-1], strArr[i-1][j], strArr[i-1][j-1]].min
			end
			if strArr[i][j] > result
				result = strArr[i][j]
			end
		end
	end
	return result * result
end

# puts MaximalSquare(["10100", "10111", "11111", "10010"])

puts MaximalSquare(["0111","1111","1111","1111"])

puts MaximalSquare(["0111","1101","0111"])