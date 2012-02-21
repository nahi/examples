$names = [:JRuby, "Ruby", 42]

def process(router)
  router.say_hello($names.sample)
end
