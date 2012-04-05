#!/bin/bash -

echo "String literal"
echo "Java SE 7 w/o indy"
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 1_string.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 1_string.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 1_string.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 1_string.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 1_string.rb

echo "Java SE 7 w/ indy"
jruby -X+C -Xinvokedynamic.cache.literals=true -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 1_string.rb
jruby -X+C -Xinvokedynamic.cache.literals=true -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 1_string.rb
jruby -X+C -Xinvokedynamic.cache.literals=true -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 1_string.rb
jruby -X+C -Xinvokedynamic.cache.literals=true -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 1_string.rb
jruby -X+C -Xinvokedynamic.cache.literals=true -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 1_string.rb

echo "Java SE 6"
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 1_string.rb
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 1_string.rb
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 1_string.rb
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 1_string.rb
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 1_string.rb

echo "CRuby"
ruby 1_string.rb 
ruby 1_string.rb 
ruby 1_string.rb 
ruby 1_string.rb 
ruby 1_string.rb 


echo
echo "Literals"
echo "Java SE 7 w/o indy"
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 2_literal.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 2_literal.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 2_literal.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 2_literal.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 2_literal.rb

echo "Java SE 7 w/ indy"
jruby -X+C -Xinvokedynamic.cache.literals=true -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 2_literal.rb
jruby -X+C -Xinvokedynamic.cache.literals=true -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 2_literal.rb
jruby -X+C -Xinvokedynamic.cache.literals=true -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 2_literal.rb
jruby -X+C -Xinvokedynamic.cache.literals=true -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 2_literal.rb
jruby -X+C -Xinvokedynamic.cache.literals=true -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 2_literal.rb

echo "Java SE 6"
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 2_literal.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 2_literal.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 2_literal.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 2_literal.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 2_literal.rb 

echo "CRuby"
ruby 2_literal.rb 
ruby 2_literal.rb 
ruby 2_literal.rb 
ruby 2_literal.rb 
ruby 2_literal.rb 


echo
echo "Constant"
echo "Java SE 7 w/o indy"
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 3_constant.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 3_constant.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 3_constant.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 3_constant.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 3_constant.rb

echo "Java SE 7 w/ indy"
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=true -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 3_constant.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=true -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 3_constant.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=true -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 3_constant.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=true -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 3_constant.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=true -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 3_constant.rb

echo "Java SE 6"
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 3_constant.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 3_constant.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 3_constant.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 3_constant.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 3_constant.rb 

echo "CRuby"
ruby 3_constant.rb 
ruby 3_constant.rb 
ruby 3_constant.rb 
ruby 3_constant.rb 
ruby 3_constant.rb 


echo
echo "Ivar"
echo "Java SE 7 w/o indy"
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 4_ivar.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 4_ivar.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 4_ivar.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 4_ivar.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 4_ivar.rb 

echo "Java SE 7 w/ indy"
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=true -Xinvokedynamic.invocation=false 4_ivar.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=true -Xinvokedynamic.invocation=false 4_ivar.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=true -Xinvokedynamic.invocation=false 4_ivar.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=true -Xinvokedynamic.invocation=false 4_ivar.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=true -Xinvokedynamic.invocation=false 4_ivar.rb 

echo "Java SE 6"
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 4_ivar.rb    
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 4_ivar.rb    
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 4_ivar.rb    
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 4_ivar.rb    
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 4_ivar.rb    

echo "CRuby"
ruby 4_ivar.rb 
ruby 4_ivar.rb 
ruby 4_ivar.rb 
ruby 4_ivar.rb 
ruby 4_ivar.rb 


echo
echo "Invoke"
echo "Java SE 7 w/o indy"
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 5_invoke.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 5_invoke.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 5_invoke.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 5_invoke.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 5_invoke.rb 

echo "Java SE 7 w/ indy"
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=true 5_invoke.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=true 5_invoke.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=true 5_invoke.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=true 5_invoke.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=true 5_invoke.rb

echo "Java SE 6"
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 5_invoke.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 5_invoke.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 5_invoke.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 5_invoke.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 5_invoke.rb 

echo "CRuby"
ruby 5_invoke.rb 
ruby 5_invoke.rb 
ruby 5_invoke.rb 
ruby 5_invoke.rb 
ruby 5_invoke.rb 


echo
echo "Math"
echo "Java SE 7 w/o indy"
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 6_math.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 6_math.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 6_math.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 6_math.rb 
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 6_math.rb 

echo "Java SE 7 w/ indy"
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=true 6_math.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=true 6_math.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=true 6_math.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=true 6_math.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=true 6_math.rb

echo "Java SE 6"
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 6_math.rb  
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 6_math.rb  
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 6_math.rb  
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 6_math.rb  
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 6_math.rb  

echo "CRuby"
ruby 6_math.rb 
ruby 6_math.rb 
ruby 6_math.rb 
ruby 6_math.rb 
ruby 6_math.rb 


echo
echo "ALL"
echo "Java SE 7 w/o indy"
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 7_all.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 7_all.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 7_all.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 7_all.rb
jruby -X+C -Xinvokedynamic.cache.literals=false -Xinvokedynamic.cache.constants=false -Xinvokedynamic.cache.ivars=false -Xinvokedynamic.invocation=false 7_all.rb

echo "Java SE 7 w/ indy"
jruby -X+C -Xinvokedynamic.cache.ivars=true 7_all.rb
jruby -X+C -Xinvokedynamic.cache.ivars=true 7_all.rb
jruby -X+C -Xinvokedynamic.cache.ivars=true 7_all.rb
jruby -X+C -Xinvokedynamic.cache.ivars=true 7_all.rb
jruby -X+C -Xinvokedynamic.cache.ivars=true 7_all.rb

echo "Java SE 6"
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 7_all.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 7_all.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 7_all.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 7_all.rb 
JAVA_HOME=/home/nahi/java/jdk1.6.0_31 jruby -X+C 7_all.rb 

echo "CRuby"
ruby 7_all.rb
ruby 7_all.rb
ruby 7_all.rb
ruby 7_all.rb
ruby 7_all.rb
