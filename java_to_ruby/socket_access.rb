require 'java'

java_import 'java.io.BufferedReader'
java_import 'java.io.InputStreamReader'
java_import 'java.io.IOException'
java_import 'java.net.Socket'

begin
  soc = Socket.new("www.java-users.jp", 80)
  soc.output_stream.write("GET / HTTP/1.0\r\n\r\n".to_java.bytes)
  bis = BufferedReader.new(InputStreamReader.new(soc.input_stream))
  while line = bis.read_line
    puts line
  end
rescue IOException => e
  puts e.backtrace
  begin
    soc.close if soc
  rescue IOException
  end
end
