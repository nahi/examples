## ScriptingContainer sample in Java and Ruby.
## Mvm.java uses Ruby evaluators as a producer and consumers.
## The producer and consumers are communicating via BlockingQueue given from outside.
## mvm.rb is a port of Mvm.java.

# At first, copy jruby.jar from JRuby distribution.

# To compile Mvm.java, get jruby.jar from JRuby distribution and:
javac -cp jruby.jar Mvm.java  

# Run:
java -cp jruby.jar:. Mvm

# See mvm.rb which is doing the same thing in Ruby.
