require 'tempfile'

file = Tempfile.new($0)
file.puts "# coding: UTF-8"
file.puts "puts :sleep"
file.puts "sleep"
100000.times do |idx|
  file.puts "str#{idx} = '*'"
end
file.close
system "jruby -Xcompile.invokedynamic=false #{file.path}"
