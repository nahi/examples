def process_options(options)
  for opt in options
    process(opt.concat("?!"))
  end
end

def process(opt)
  puts opt
end

mock = Object.new
def mock.concat(arg)
  "tested!"
end
options = ["yes", "no", mock]
process_options(options)
