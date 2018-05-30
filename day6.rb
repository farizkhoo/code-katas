def LetterCapitalize(str)

  # code goes here
  return str.chomp.split.map(&:capitalize).join(' ') 
         
end
   
# keep this function call here    
puts LetterCapitalize(STDIN.gets)