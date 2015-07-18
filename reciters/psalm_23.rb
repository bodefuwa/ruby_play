require 'nokogiri'
require 'open-uri'

url = ""
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text
# doc.css(".")