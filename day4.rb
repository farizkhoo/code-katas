def LetterChanges(str)

  # code goes here
  str = str.chomp.split(//)
  str.each do |letter|
  	if letter =~ /[a-zA-z]/
  		letter.next!
  	end

  	if letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u'
  		letter.upcase!
  	end
  end
  str = str.join
  return str
         
end
   
# keep this function call here    
puts LetterChanges(STDIN.gets)

