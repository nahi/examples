# coding: UTF-8
def target
  times = 10000
  matcher = /[A-Z][a-z]*/
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
