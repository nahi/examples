# To run with flat profiler:
jruby --profile fib.rb

# To run with graph profiler:
jruby --profile.graph fib.rb

# To see VisualVM CPU/Memory sampling:
jruby fib.rb 1 50
# Then, attach the process with VisualVM.
# You'll see 'org.jruby.runtime.CachingCallSite.call' at the top.

# To see the result with invokedynamic:
jruby -X+C -Xcompile.invokedynamic=true -J-XX:+UnlockExperimentalVMOptions -J-XX:+EnableInvokeDynamic -J-XX:MaxInlineSize=150 -J-XX:InlineSmallCode=5000 fib.rb 1 50
# Then, attach the process with VisualVM.
# You'll see some MethodDispatch thing instead of 'CachingCallSite.call'.
