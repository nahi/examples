# coding: UTF-8
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
  $ivar.ivar
  constant
end

def math
  invoke - 2
end

def calc
  math
end

start = Time.now
while Time.now - start < 10
  calc
end

idx = 0
start = Time.now
while idx < 1000000
  calc
  idx += 1
end
puts (Time.now - start) * 1000
