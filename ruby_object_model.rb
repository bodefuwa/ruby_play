#ruby_object_model.rb

animal = Object.new

def animal.number_of_feet=(feet)
	@number_of_feet = feet

end

def animal.number_of_feet
	@number_of_feet
end

animal.number_of_feet = 4
# p animal.number_of_feet

cat  = animal.clone
cat.number_of_feet = 4
# p cat.number_of_feet

felix = cat.clone

p felix.number_of_feet

class Multiplier

  def self.create_multiplier(n)	
    define_method("times_#{n}") do |val|
      val * n
     end  	
   end

   create_multiplier(2)
   create_multiplier(3)
   create_multiplier(4)
 end

m = Multiplier.new
p m.times_4(3)
#p m.create_multiplier(5)
#p m.times_5(4)