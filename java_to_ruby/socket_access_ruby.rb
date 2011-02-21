require 'socket'

TCPSocket.open('www.java-users.jp', 80) do |soc|
  soc.write("GET / HTTP/1.0\r\n\r\n")
  soc.each_line do |line|
    puts line
  end
end
