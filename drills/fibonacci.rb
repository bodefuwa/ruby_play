module CodingDrills
  class Fibonacci
    def calculate(number)
      x, y = 0, 1
      number.times do
        puts y
        x, y = y, x + y
      end
    end
  end
  fib = Fibonacci.new
  fib.calculate(10)
end
