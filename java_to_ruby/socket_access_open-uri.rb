# handles http, https and ftp
require 'open-uri'
puts open('http://www.java-users.jp/').read

# open('http://www.java-users.jp/').each_line(&:display)
