require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://www.biblegateway.com/quicksearch/?quicksearch=God+is+good&qs_version=NKJV"
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text
# doc.css().each do |passage|

#end
