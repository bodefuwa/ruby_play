Gem::Specification.new do |s|
  s.name         = "anagram"
  s.summary      = "Find anagrams of words supplied on the command line"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README.md'))
  s.requirements = ['An installed dictionary (most Unix systems have one)']
  s.version      = "0.0.1"
  s.author       = "Rawneed, Inc."
  s.email        = "rawneedinc@yahoo.com"
  s.homepage     = "http://rawneed.com"
  s.platform     = Gem::Platform::RUBY
  s.required_ruby_version = '>=2.4.0'
  s.files        = Dir['**/**']
  s.executables  = [ 'anagram' ]
  s.test_files  = Dir["test/test*.rb"]
  s.has_rdoc     = false
end
