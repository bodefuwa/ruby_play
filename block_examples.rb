# block call example
def call_block 
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

# call_block { puts "In the block"}

# call_block { x = "In the block"; puts x.upcase }

def who_says_what
  yield("Victory", "Hello Praise")
  yield("Praise", "Hi Victoy!")
end

# who_says_what {|person, phrase| puts "#{person} says #{phrase}"}

animals = %w(ant bee cat dog) # creates an array of animals
# animals.each {|animal| puts animal} # iterate with each over the contents of animals array

# [ 'cat', 'dog', 'horse' ].each { |name| print name, " " }
# 5.times { print "*" }
# 3.upto(6) {|i| print i}
# ('a'...'f').each { |char| print char }
# puts

class BookInStock
  def initialize(isbn, price)
  	@isbn = isbn
  	@price = Float(price)
  end

  def to_s
  	"ISBN: #{@isbn}, price: #{@price}"
  end
end

b1 = BookInStock.new("isbn1", 3)
# puts b1 #.initialize("new isbn", 7) # .to_s


# Arrays
a = [ "392.6", "Victory", "Priase", 200 ]
# puts a, a.class, a.length, a[0], a[3]

b = Array.new
# puts b.class, b.length, b[0] ||= "empty", b[-1] # interesting!

c = [ 1,3,4,5,6,7,8,9 ]
# puts c.first, c.last, c[-3], c[-1], c[1..3]

stack = []
stack.push "red", "white", "blue", "green"

# p stack

stack.pop
# p stack

stack.pop
# p stack

stack.pop
# p stack

queue = []
queue.push "red"
queue.push "green"
# p queue

queue.shift
# p queue

queue.shift
# p queue

h = { 
  name: "John Smith",
  age: "29",
  hair: "Blonde",
  eye: "blue",
  occupation: "Attorney",
  hobby: "swimming" }
  h.clear
# p h, h.length, h.class, h[:eye], h[2] 
g = Hash.new("rock climbing")
g[:name]       = "Curly Sue"
g[:age]        = "26"
g[:hair]       = "Brown"
g[:eye]        = "hazel"
g[:occupation] = "Doctor"

# p h, g
q = [:name, "Buster Brown", :age, "31", 
     :hair, "Black", :eye, "brown",:occupation, "Banker",
     :hobby, "Clubbing"]
# p q 
r = Hash.try_convert(q)

# p r, q, g.assoc("hazel"), h #.assoc(:name)

h = { "a" => 100, "b" => 200 }
h.default = "Go swimming"
# p h["a"]
# p h["z"]
 h.default = lambda { |hash, key| has[key] = key + key }
# p h
# p h["cat"]

#p h
h.delete("a")
#p h
# g.each { |key, value| puts "#{key}: #{value}".upcase }
# g.each_pair { |key, value| puts "#{key}: #{value}".upcase }
#g.each_key { |key| puts key.capitalize }

# g.each_value { |value| puts value }

p h.empty?, h, h.flatten, h.rehash, q


