module RubyPlay
# require 'cgi'

# cgi = CGI.new
# cgi['name']
# cgi['ministry']

#  def method_missing(arg, *args, &block)
#    p "Called #{name} with #{args.inspect} and #{block}"
#  end

#  wibble
#  wobble 1, 2
#  wurble(3, 4) { stuff_to_do }

  class MyOpenStruct < BasicObject
    def initialize(initial_values = {})
 	  @values = initial_values
    end  

    def _singleton_class
      class << self
      	self
      end
    end

    def method_missing(arg, *args, &block)
      if arg[-1] == "="
      	base_arg = arg[0...2].intern
      	_singleton_class.instance_exec(arg) do |arg|
      	  define_method(arg) do |value|
      		@values[base_arg] = value
       	  end
      	end
      	@values[base_arg] = args[0]
      else
      	_singleton_class.instance_exec(arg) do |arg|
      	  define_method(arg) do 
      	  	@values[arg]
      	  end
      	end
      	@values[arg]
      end
    end
  end

  obj = MyOpenStruct.new(arg: "Victory & Praise")
  obj.lastname = "Fuwa"
  obj.likes	 = "Pizza & Fries"

  puts "#{obj.arg} #{obj.lastname} likes #{obj.likes}" 
end