require 'benchmark'

6.times do
  puts Benchmark.measure {
    5000000.times do
      times = 10000
      matcher = /[A-Z][a-z]*/
      [times, matcher]
    end
  }
end
