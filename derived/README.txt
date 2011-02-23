# To see how Ruby <-> Java integration work:

javac -cp jruby.jar example/Base.java
jruby -S jrubyc -c . --javac derived.rb
java -cp jruby.jar:. example.Base

# example.Base class is an abstract class. 
# derive.rb extends example.Base and implements abstract method.
# jrubyc generates Derived.java and compiles it to get Derived.class.
# example.Base.main uses Derived.class as a concrete class of Base.
