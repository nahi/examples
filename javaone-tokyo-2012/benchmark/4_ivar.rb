# coding: UTF-8
class IVar
  def cache(value)
    @cache = value
    @cache
  end
end

def target(ivar)
  ivar.cache(1)
end

ivar = IVar.new
start = Time.now
while Time.now - start < 5
  target(ivar)
end

idx = 0
start = Time.now
while idx < 5000000
  target(ivar)
  idx += 1
end
puts (Time.now - start) * 1000
