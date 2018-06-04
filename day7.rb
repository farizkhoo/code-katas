def SimpleSymbols(str)

  	# code goes here
  return str.scan(/[+][a-zA-Z][+]/).count == str.scan(/[a-zA-Z]/).count
         
end
   
# keep this function call here    
puts SimpleSymbols(STDIN.gets) 