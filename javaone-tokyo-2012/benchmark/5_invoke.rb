# coding: UTF-8
def target(router)
  router.say_hello("Ruby")
end

router = Object.new
def router.say_hello(arg)
  nil
end

start = Time.now
while Time.now - start < 5
  target(router)
end

idx = 0
start = Time.now
while idx < 4000000
  target(router)
  idx += 1
end
puts (Time.now - start) * 1000
