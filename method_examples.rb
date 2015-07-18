# method_examples.rb
def praise_god(arg1="Father", arg2="Son", arg3="Holy Spirit")
  "#{arg1}, #{arg2}, #{arg3}."
end

# p praise_god
# p praise_god("Jehovah")
# p praise_god("Jehovah", "Christ")
# p praise_god("Jehovah", "Christ", "Comforter")

def varargs(arg1, *args)
  # "arg1=#{arg1}, args=#{args.inspect}"
  "arg1 = #{arg1}, arg2 = #{args}"
end

# p varargs("one")
# p varargs("one", "two")
# p varargs("one", "two", "three", "four", "five")
e = ["Daddy","Mommy","Victory","Praise"].each
# p e.each
# p e.next
# p e.next
def method_two(arg)
  case
  when arg > 0 then "positive"
  when arg < 0 then "negative"	
  else 				"zero"	
  end
end	
# p method_two 35
# p method_two 0
p varargs(10, ['2', '4', '5']) 