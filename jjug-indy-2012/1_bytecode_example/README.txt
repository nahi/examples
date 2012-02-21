Partial examples to see how nodes are compiled.
You can see bytecode with the following command.

% jruby --bytecode {example}

At this moment, for 4_ivar.rb, you need to add the following option.

% jruby --bytecode -Xinvokedynamic.cache.ivars=true 4_ivar.rb
