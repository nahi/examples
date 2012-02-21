# coding: UTF-8
require 'benchmark'

6.times do
  puts Benchmark.measure {
    5000000.times do
      "JRuby"
    end
  }
end
