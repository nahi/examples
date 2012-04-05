message = "Hello"
message << name << "!"

times = 10000
matcher = /[A-Z][a-z]*/

DEFAULT = Container.new.freeze
comtainer = DEFAULT
DEFAULT = nil

module Cache
  def cache(value)
    @cache = value
  end
end
class Foo
  include Cache
end
class Bar
  include Cache
end

$name = [:JRuby, "Ruby", 42]
def process(router)
  router.say_hello($names.sample)
end

fib(n - 2) + fib(n - 1)
display if (x >= 5)
elapsed = msec * 1000.0
