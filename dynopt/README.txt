# dynopt

jruby --server fib_recursive.rb 5 35
jruby --server -Xcompile.dynopt=true fib_recursive.rb 5 35

# invokedynamic comparison (needs JDK7)

jruby -X+C -Xcompile.invokedynamic=false -J-XX:+UnlockExperimentalVMOptions -J-XX:+EnableInvokeDynamic -J-XX:MaxInlineSize=150 -J-XX:InlineSmallCode=5000 bench_tak.rb 5
jruby -X+C -Xcompile.invokedynamic=true -J-XX:+UnlockExperimentalVMOptions -J-XX:+EnableInvokeDynamic -J-XX:MaxInlineSize=150 -J-XX:InlineSmallCode=5000 bench_tak.rb 5
jruby -Xcompile.dynopt=true -J-XX:+UnlockExperimentalVMOptions -J-XX:+EnableInvokeDynamic -J-XX:MaxInlineSize=150 -J-XX:InlineSmallCode=5000 bench_tak.rb 5
