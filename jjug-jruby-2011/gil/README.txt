## GIL (Global Interpreter Lock) demo.

# To see concurrency aspects of JRuby and CRuby:
ruby bench_threaded_reverse.rb
jruby bench_threaded_reverse.rb

# To see non-GIL aspect of JRuby:
jruby array_mtunsafe.rb
# You'll see ConcurrencyException or non-10000 value.

# Current solution: array_sync.rb
