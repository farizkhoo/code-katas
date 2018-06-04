def TimeConvert(num)

  # code goes here
  return "#{num.chomp.to_i/60}:#{num.chomp.to_i%60}"
         
end
   
# keep this function call here    
puts TimeConvert(STDIN.gets)