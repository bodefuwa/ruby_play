module RailsDrill
  class ChainSample
    def chain(a, b, c, d)
      #[a, b, c].for_each.push(d).shift.tap {|x| puts x}.upcase.next 
      [a, b, c, d].each {|x| puts x.capitalize}
    end
  end
  
  cs = ChainSample.new
  cs.chain('john', 'paul', 'george', 'ringo')
end
