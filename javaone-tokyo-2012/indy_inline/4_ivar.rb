module Cache
  def target
    @cache
  end
end
class Foo
  include Cache
  def initialize
    @cache = 1
  end
end
class Bar
  include Cache
  def initialize
    @cache = 2
  end
end

idx = 0
obj = [Foo.new]
while idx < 100000
  obj.sample.target
  idx += 1
end
