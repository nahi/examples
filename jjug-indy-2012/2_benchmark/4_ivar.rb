# jruby -Xinvokedynamic.cache.ivars=true/false 4_ivar.rb

require 'benchmark'

class IVar
  def cache(value)
    @cache = value
    @cache
  end
end

ivar = IVar.new

6.times do
  puts Benchmark.measure {
    10000000.times do
      ivar.cache(1)
    end
  }
end
