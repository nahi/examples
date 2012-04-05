def process(opt)
  opt
end
  
def process_options(opt)
  process(opt.concat("?!"))
end

20000.times do
  process_options("yes")
end
