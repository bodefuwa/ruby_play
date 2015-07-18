
class TopicList
  def initialize
  	@topics = []
  end
  def <<(topic)
  	@topics << topic
  	self
  end
  def list
  	@topics.each {|topic| puts topic.inspect}
  end
end

# topics = TopicList.new
# topics << "faith" << "word of God" << "creation" # this must come from a file or db
# topics.list
class SomeClass
  def []=(*params)
  	value = params.pop
  	puts "Indexed with #{params.join(', ')}"
  	puts "value = #{value.inspect}"
  end
end

# s = SomeClass.new
# s[1] = 2
# s['mommy', 'daddy', 'Victory', 'Praise'] = 'Fuwa family'

class TopicsList
  def initialize
    @topics = []
  end
  def topics=(list)
  	@topics = list.map(&:upcase)
  end
  def [](offset)
  	@topics[offset]
  end	
end

list = TopicsList.new
list.topics = %w{ faith hope love salvation holiness peace joy }
p list[5]
p list[2]