module RailsDrill
  class ChainSample2
    def chain(a, b, c, d)
      puts [a, b, c, d].map(&:capitalize) #{|x| puts x}
    end
  end
  
  cs = ChainSample2.new
  cs.chain('john', 'paul', 'george', 'ringo')
end
