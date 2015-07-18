# show_math.rb
def show_regexp(string, pattern) #(*args)
  match = pattern.match(string) #(args[0])
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end

# p show_regexp('Praise the LORD', /t/)
# p show_regexp('God has given Victory', /g/)
# p show_regexp('God gets the Praise', /h/)
# p show_regexp('God is good all the time', /ll/)
# p show_regexp('yes | no', /\|/)
# p show_regexp('yes (no)', /\(no\)/)
# p show_regexp('are you sure?', /e\?/)
# str = "this is\nthe time"
# p show_regexp(str, /^the/)
# p show_regexp(str, /is$/)
# p show_regexp(str, /\Athis/)
# p show_regexp(str, /\Athe/)
# p show_regexp(str, /time\Z/)
# p show_regexp(str, /time\z/)
# p show_regexp(str, /\bis/)
# p show_regexp(str, /\Bis/)
# p show_regexp('Price $12', /[aeiou]/)
# p show_regexp('Price $12', /[\s]/)
# p show_regexp('Price $12', /[$.]/)
# a = '[12-3], what the LORD has done for me, I cannot tell it all'
# p show_regexp(a, /[^A-F]/)
# p show_regexp(a, /[A-F^a-f]/)
# p show_regexp(a, /[0-9]/)
# p show_regexp(a, /[0-9][0-9]/)
# p show_regexp('It costs $12', /\s/)
# p show_regexp('  It costs $12', /\S/)
# p show_regexp('Price $12.', /[aeiou]/)
# p show_regexp('Price $12.', /[[:digit:]]/)
# p show_regexp('Price $12.', /[[:space:]]/)
# p show_regexp('Price $12.', /[[:^alpha:]]/)
# p show_regexp('Price $12.', /[[:punct:]aeiou]/)
# p show_regexp(a, /[\]]/)
# p show_regexp(a, /[0-9\]]/)
# p show_regexp(a, /[\-\d]/)
# p a.gsub(/[a-z&&[aeiou]]/, '*')
# a = 'It\'s cost is $12'
# p show_regexp(a, /c.s/)
# p show_regexp(a, /./)
# p show_regexp(a, /\'/)
# proc1 = -> arg { puts "In proc1 with #{arg}" }
# proc1.call "Victory"

# proc2 = -> arg1, arg2 { puts "In New York with #{arg1} and #{arg2}" }
# proc2.call "Victory", "Praise"

# a = "This is the day the LORD has made, I will rejoice and be glad in it"
# p show_regexp(a, /\w+/)
# p show_regexp(a, /\s.*\s/)
# p show_regexp(a, /\s.*?\s/)
# p show_regexp(a, /[aeiou]{2,4}/)
# p show_regexp(a, /jo?i/)
# p show_regexp(a, /jo??i/)
# p show_regexp(a, /r*/)
# p show_regexp(a, /Z*/)
# p show_regexp(a, /d|e/)
# p show_regexp(a, /(has|made) \w+/)
# p show_regexp(a, /has|made \w+/)
# p show_regexp(a, /(?<char>\w)\k<char>/)
# b = 'Mississippi'
# p show_regexp(b, /(?<seq>\w+)\k<seq>/)
# p /(?<hour>\d\d):(?<min>\d\d)(..)/ =~ "12:59am"
# p "Hour is #{hour}, minute #{$2}"
# p "Hour is #{$1}, minute #{min}"
# a = "quick brown fix"
# p a.sub(/[aeiou]/, '*')
# p a.gsub(/[aeiou]/, '*')
# p a.gsub(/\s\S+/, '')
# p a.gsub(/\s\S+/, '')
def mixed_case(name)
  name.downcase.gsub(/\b\w/) {|first| first.upcase}
end

# p mixed_case("victory fuwa")
# p mixed_case("praise fuwa")
# p mixed_case("kenny fuwa")
# p mixed_case("mr fuwa")

# str = "victory, 4, praise, 2, mommy, daddy"
# p str.scan(/[a-z|0-9]+(?=,)/)
def 