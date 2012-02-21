require 'benchmark'

$names = [:JRuby, "Ruby", 42]

def process(router)
  router.say_hello($names.sample)
end

router = Object.new

def router.say_hello(arg)
  nil
end

6.times do
  puts Benchmark.measure {
    5000000.times do
      process(router)
    end
  }
end
