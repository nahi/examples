require 'java'
require 'rubygems'
require 'maven/bouncycastle/bcprov-jdk15'

java_import 'java.security.KeyPair'
java_import 'java.security.KeyPairGenerator'
java_import 'java.security.Security'

java_import 'org.bouncycastle.asn1.x509.X509Name'
java_import 'org.bouncycastle.jce.PKCS10CertificationRequest'
java_import 'org.bouncycastle.jce.provider.BouncyCastleProvider'

Security.add_provider(BouncyCastleProvider.new)

generator = KeyPairGenerator.get_instance("RSA", "BC")
# method 'initialize' conflicts with the method name in Ruby world.
# invoking it by java_send with specifying method signature.
generator.java_send :initialize, [Java::int], 2048
key_pair = generator.generate_key_pair

subject = X509Name.new("CN=localhost")
req = PKCS10CertificationRequest.new("SHA1withRSA",
  subject, key_pair.public, nil, key_pair.private)

bin = String.from_java_bytes(req.encoded)
puts "Generated: #{bin.bytesize}[bytes]"
