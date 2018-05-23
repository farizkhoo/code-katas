def FirstFactorial(num)

  # code goes here
  first_num = num

  if first_num > 1
  	second_num = num - 1
  else
  	return first_num
  end

  factorial = first_num * FirstFactorial(second_num)

  return factorial 
         
end
   
# keep this function call here    
puts FirstFactorial(STDIN.gets.chomp.to_i)