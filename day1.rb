def LongestWord(sen)

  # code goes here
  sen_array = sen.scan(/[a-zA-z]+/)

  longest_word = sen_array[0]

  sen_array.each do |word|
  	if word.length > longest_word.length
  		longest_word = word
  	end
  end

  return longest_word
end
            
# keep this function call here    
puts LongestWord(STDIN.gets)