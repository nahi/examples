# coding: UTF-8
def target(a)
  a = 2
end

a = 44
start = Time.now
while Time.now - start < 5
  target(a)
end

idx = 0
start = Time.now
while idx < 10000000
  target(a)
  idx += 1
end
puts (Time.now - start) * 1000
