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

def ChessboardTraveling(str)

  # code goes here
  # example str (1 1)(2 2)
  if str =~ /[\(\d\ \d\)]{2}/
  	coords = []
  	str.scan(/\d/).each do |x|
  		coords << x.to_i
  	end
    if coords[3] < coords[1] || coords[2] < coords[0]
      return "please make sure second () has bigger values than first ()"
    end
  else
    return "invalid format"
  end

    # _ , _ , _ , _ * total_moves
    # up/right, up/right, ... arrange

    up_moves = coords[3] - coords[1]
    down_moves = coords[2] - coords [0]

    total_moves = up_moves + down_moves
    return FirstFactorial(total_moves)/(FirstFactorial(up_moves) * FirstFactorial(down_moves))

end
   
# keep this function call here    
puts ChessboardTraveling(STDIN.gets)