Simple run w/o debugging;

% jruby -J-Xbootclasspath/a:$JRUBY_HOME/build_lib/jgrapht-jdk1.5.jar -X-C fib.rb


To see IR sequence;

% java -cp $JRUBY_HOME/lib/jruby.jar:$JRUBY_HOME/build_lib/jgrapht-jdk1.5.jar -Djruby.home=$JRUBY_HOME -Djruby.lib=$JRUBY_HOME/lib org.jruby.interpreter.Interpreter -debug fib.rb
