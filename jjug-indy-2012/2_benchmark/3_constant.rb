require 'benchmark'

class Container; end
DEFAULT = Container.new.freeze

6.times do
  puts Benchmark.measure {
    10000000.times do
      DEFAULT
    end
  }
end
