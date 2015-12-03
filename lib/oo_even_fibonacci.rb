class EvenFibonacci
  def initialize(limit)
    @limit = limit
    @fibonacci_sequence = Array.new
  end


  def limit= (limit)
    @limit = limit
  end

  def limit
    @limit
  end

  def create_fibonacci_sequence
    i=0

    @fibonacci_sequence[i]= i+1
    @fibonacci_sequence[i+1]= i+2
    i = 2
    count = 2
    while (count + @fibonacci_sequence[i-2]) < @limit
     @fibonacci_sequence[i] = (@fibonacci_sequence[i-1] + @fibonacci_sequence[i-2])
      count= @fibonacci_sequence[i]
      i += 1
    end

  end

  def sum
    create_fibonacci_sequence
    puts @fibonacci_sequence
    even_fibonacci = @fibonacci_sequence.select{|x| x % 2 == 0}
    fibonacci_sum = even_fibonacci.reduce(:+)
  end
end