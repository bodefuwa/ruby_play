module RubyPlay  
#  def array_manipulator
  	ary = [5, -3, 0, 55, 12]
  	ary.each do |value|
	  lowest = value
	  if lowest < ary.next 
	  lowest = ary.next
	  else 
	  highest = ary.next
	  end
	  #return 
	  p "#{lowest} is the lowest number"
	  p "#{highest} is the highest number"
#	end
  end

# p array_manipulator
end


# p '#{lowest} is the lowest number'
# p "#{highest} is the highest number"