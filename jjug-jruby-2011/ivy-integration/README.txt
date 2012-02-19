# Based on example at http://blog.headius.com/2010/04/using-ivy-with-jruby-15-ant-integration.html

# Run the following at first time to install ivy:
jruby -S rake ivy:install

# After that, run:
jruby -S rake run
# This resolves dependency, downloads artifacts, saves as a cache, compiles and run.
