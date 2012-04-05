# coding: UTF-8
class Container; end
DEFAULT = Container.new.freeze

def target
  DEFAULT
end

start = Time.now
while Time.now - start < 5
  target
end

idx = 0
start = Time.now
while idx < 10000000
  target
  idx += 1
end
puts (Time.now - start) * 1000
