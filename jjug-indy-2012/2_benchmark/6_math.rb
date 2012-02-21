require 'benchmark'

a = 44

6.times do
  puts Benchmark.measure {
    10000000.times do
      a - 2
    end
  }
end
