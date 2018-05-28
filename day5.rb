def SimpleAdding(num)

	# code goes here
	if num > 1
		num += SimpleAdding(num-1)
	else
		return num
	end
end
   
# keep this function call here    
puts SimpleAdding(STDIN.gets.chomp.to_i)