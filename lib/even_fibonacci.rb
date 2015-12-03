=begin
Psuedo
gather all numbers in fibonacci sequence under 4 million
gather all numbers that are even
add up all numbers that are even
=end

def create_fibonacci_sequence(limit)
  i=0
  fibonacci = Array.new
  fibonacci[i]= i+1
  fibonacci[i+1]= i+2
  i = 2
  count = 2
  while (count + fibonacci[i-2]) < limit
    fibonacci[i] = (fibonacci[i-1] + fibonacci[i-2])
    count= fibonacci[i]
    i += 1
  end
fibonacci
end

def even_fibonacci_sum(limit)
  fibonacci = create_fibonacci_sequence(limit)
  even_fibonacci = fibonacci.select{|x| x % 2 == 0}
  fibonacci_sum = even_fibonacci.reduce(:+)
end