def CheckNums(num1,num2)

  # code goes here
  if num2 > num1
  	return true
  elsif num2 == num1
  	return -1
  else
  	return false
  end         
end
   
# keep this function call here    
puts CheckNums(STDIN.gets)