def MaximalSquare(strArr)

	# display board
	puts strArr
	
	# convert string array into integer matrix
	strArr.each_with_index do |row, i|
		strArr[i] = row.split(//)
		strArr[i].each_with_index do |column, j|
			strArr[i][j] = column.to_i
		end
	end
	
	# clone matrix
	cache = strArr
	result = 0

	# find largest square using bottom-right index
	strArr.each_with_index do |row, i|
		strArr[i].each_with_index do |column, j|
			if i == 0 || j == 0
			elsif strArr[i][j] > 0
				# checks values up, left, and up-left
				cache[i][j] = 1 + [cache[i][j-1], cache[i-1][j], cache[i-1][j-1]].min
			end
			if cache[i][j] > result
				result = cache[i][j]
			end
		end
	end
	return result * result
end

# puts MaximalSquare(["10100", "10111", "11111", "10010"])

puts MaximalSquare(["0111","1111","1111","1111"])

puts MaximalSquare(["0111","1101","0111"])