# Install BouncyCastle provier maven artifact via RubyGems first.
jruby -S gem install bouncycastle:bcprov-jdk15

# Then, run pkcs10sample.rb to use BouncyCastle from Ruby to generate PKCS#10.
# Pkcs10Sample.java is a Java sample to do the same.
