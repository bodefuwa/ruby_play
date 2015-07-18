# block example

# age = 20
# name = "Bode"

# 1.upto(5) do |age;name|
#  age
#  name = "John"
# end

# puts age
# puts name
# p lambda { |x| x * 2 }
class Greet
  def greeting(greeted || "Bmand")
    p "hello #{greeted}"
  end
end

class Greeter < Greet
  def greeting(greeted)
    p "Hiya #{greeted}"
  end
end

greeter = Greeter.new
greeter.greeting("Bode")
# greeter.greeting:send 