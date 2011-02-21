# Plain JRuby
jruby fib_recursive.rb 5 35

# JRuby + Dynamic Optimization (off by default in JRuby 1.6)
jruby -Xcompile.dynopt=true fib_recursive.rb 5 35

## invokedynamic comparison (needs JDK7)
# Plain JRuby
jruby -X+C -Xcompile.invokedynamic=false -J-XX:+UnlockExperimentalVMOptions -J-XX:+EnableInvokeDynamic -J-XX:MaxInlineSize=150 -J-XX:InlineSmallCode=5000 bench_tak.rb 5
# invokedynamic
jruby -X+C -Xcompile.invokedynamic=true -J-XX:+UnlockExperimentalVMOptions -J-XX:+EnableInvokeDynamic -J-XX:MaxInlineSize=150 -J-XX:InlineSmallCode=5000 bench_tak.rb 5
# dynopt
jruby -Xcompile.dynopt=true -J-XX:+UnlockExperimentalVMOptions -J-XX:+EnableInvokeDynamic -J-XX:MaxInlineSize=150 -J-XX:InlineSmallCode=5000 bench_tak.rb 5
