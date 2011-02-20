# Run the following to see optimized IR sequence.
# java -cp $JRUBY_HOME/lib/jruby.jar:$JRUBY_HOME/build_lib/jgrapht-jdk1.5.jar -Djruby.home=$JRUBY_HOME -Djruby.lib=$JRUBY_HOME/lib org.jruby.interpreter.Interpreter -debug dead_code_elimination.rb

class Foo
  def self.foo
    a = 1
    b = a
    c = b
    c
  end
end

Foo.foo
