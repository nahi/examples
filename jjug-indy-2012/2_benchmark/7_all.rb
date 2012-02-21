require 'benchmark'

def string
  "Hello"
end

def literal
  42 + string.bytesize
end

DEFAULT = 42
def constant
  literal + DEFAULT
end

class IVar
  def ivar
    @cache = constant
    @cache
  end
end
$ivar = IVar.new

def invoke
  # Because ivar opt is not enabled by default
  #$ivar.ivar
  constant
end

def math
  invoke - 2
end

def calc
  math
end

6.times do
  puts Benchmark.measure {
    5000000.times do
      calc
    end
  }
end
