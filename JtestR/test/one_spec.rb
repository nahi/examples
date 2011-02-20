require 'java'
$CLASSPATH << '/home/nahi/git/bouncy-castle-java/lib/bcprov-jdk15-145.jar'
java_import 'org.bouncycastle.asn1.x509.X509Name'
java_import 'org.bouncycastle.asn1.x509.X509NameEntryConverter'
java_import 'org.bouncycastle.asn1.DERObjectIdentifier'
java_import 'org.bouncycastle.asn1.DERPrintableString'
java_import 'java.util.Hashtable'

describe "X509Name" do 
  DC = '0.9.2342.19200300.100.1.25'
  CN = '2.5.4.3'

  it "should not be reversed by default" do 
    name = X509Name.new('DC=org,DC=ruby-lang,CN=localhost')
    name.to_string.should == 'DC=org,DC=ruby-lang,CN=localhost'
  end

  it "should be reversed by first argument" do 
    name = X509Name.new(true, 'DC=org,DC=ruby-lang,CN=localhost')
    name.to_string.should == 'CN=localhost,DC=ruby-lang,DC=org'
  end

  it "should be initialized with Hashtable" do 
    map = Hashtable.new
    map.put DERObjectIdentifier.new(DC), 'ruby-lang'
    map.put DERObjectIdentifier.new(CN), 'localhost'
    name = X509Name.new(map)
    name.to_string.should == 'DC=ruby-lang,CN=localhost'
  end

  it "should use given converter for ASN1 encode" do 
    converter = mock(X509NameEntryConverter)
    name = X509Name.new('CN=localhost', converter)
    converter.stubs('getConvertedValue').
      with(DERObjectIdentifier.new(CN), 'localhost').
      returns(DERPrintableString.new('converted')).
      times(1)
    name.toASN1Object.to_string.should == '[[[2.5.4.3, converted]]]'
  end
end
