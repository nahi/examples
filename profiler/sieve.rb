# sieve of Eratosthenes
max = Integer(ARGV.shift || 100)

# MyArray counts 
class MyArray < Array
  attr_reader :count

  def initialize(*args)
    super
    @added = 0
  end

  def []=(idx, element)
    super
    @added += 1
  end
end

sieve = MyArray.new # instead of []

for i in 2 .. max
  sieve[i] = i
end

for i in 2 .. Math.sqrt(max)
  next unless sieve[i]
  (i*i).step(max, i) do |j|
    sieve[j] = nil
  end
end
#puts sieve.compact.join(", ")
