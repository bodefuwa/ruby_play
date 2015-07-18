# fiber_examples.rb

counts = Hash.new(0)
File.foreach("day.rb") do |line|
  line.scan(/\w+/) do |word|
  	word = word.downcase
  	counts[word] += 1
  end
end

# counts.keys.sort.each { |k| puts "#{k}:#{counts[k]} " }

words = Fiber.new do
  File.foreach("day.rb") do |line|
  	line.scan(/\w+/) do |word|
  	  Fiber.yield word.downcase
  	end
  end
  nil
end
counts = Hash.new(0)
while word = words.resume
  counts[word] += 1
end
# counts.keys.sort.each { |k| puts "#{k}:#{counts[k]}" }

twos = Fiber.new do
  num = 2
  loop do 
  	Fiber.yield(num) unless num % 3 == 0
  	num += 2
  end 
end
# 10.times { print twos.resume, " " }

########################################
# THREADS
require 'net/http'

pages = %w( www.rawneed.com www.bdfcontractservices.com wordfocuschapel.org www.lasvue.com )

threads = pages.map do |page_to_fetch|
  Thread.new(page_to_fetch) do |url|
  	http = Net::HTTP.new(url, 80)
  	# print "Fetching: #{url}\n"
  	resp = http.get('/')
  	# print "Got #{url}: #{resp.message}\n"
  end
end
threads.each { |thr| thr.join }

###########################################

count = 0
threads = 10.times.map do |i|
  Thread.new do
    sleep(rand(0.1))
    Thread.current[:mycount] = count 
    count += 1
  end
end

threads.each { |t| t.join; print t[:mycount], ", " }
puts "count = #{count}"

