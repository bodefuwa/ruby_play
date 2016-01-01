# module CodingDrills
  def fib_sequence
    Enumerator.new do |generator|
      i1, i2 = 1, 1
      loop do
        generator.yield i1
        i1, i2 = i2, i1+i2
      end
    end
  end
# puts fib_sequence.first(10)
# end
