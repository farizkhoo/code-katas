def KaprekarsConstant(num)

  # code goes here
  	num3 = num.chomp.to_i
  	count = 0

  	while num3 != 6174 do

		if num3 > 0 && num3 < 10
		num_array = [0, 0, 0]
		elsif num3 > 9 && num3 < 100
		num_array = [0, 0]
		elsif num3 > 99 && num3 < 1000
		num_array = [0]
		elsif num3 > 999 && num3 < 10000
	  	num_array = []
		else
			return "Please input a valid number"
		end

	  	num3.to_s.scan(/\d/).each do |x|
		  	num_array << x.to_i
		end
	 
	  	num1 = num_array.sort.join.to_i
	  	num2 = num_array.sort.reverse.join.to_i

		if num1 > num2
			count += 1
			num3 = num1 - num2
		elsif num1 < num2
			count += 1
			num3 = num2 - num1
		else
			return "Please put at least 2 distinct numbers"
		end
	end

  
  return count 
         
end
   
# keep this function call here    
puts KaprekarsConstant(STDIN.gets)