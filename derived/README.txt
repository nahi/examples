# To see how Ruby <-> Java integration work:

javac -cp jruby.jar example/Base.java
jruby -S jrubyc -c . --javac derived.rb
java -cp jruby.jar:. example.Base
