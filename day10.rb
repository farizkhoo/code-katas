def AlphabetSoup(str)

  # code goes here
  return str.chars.sort.join 
         
end
   
# keep this function call here    
puts AlphabetSoup(STDIN.gets)