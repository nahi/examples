import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.Security;

import org.bouncycastle.asn1.x509.X509Name;
import org.bouncycastle.jce.PKCS10CertificationRequest;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class Pkcs10Sample {
    public static void main(String[] args) throws Exception {
        Security.addProvider(new BouncyCastleProvider());

        KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA", "BC");
        generator.initialize(2048);
        KeyPair keyPair = generator.generateKeyPair();

        X509Name subjectDn = new X509Name("CN=localhost");
        PKCS10CertificationRequest req = new PKCS10CertificationRequest(
                "SHA1withRSA", subjectDn, keyPair.getPublic(), null,
                keyPair.getPrivate());

        byte[] bin = req.getEncoded();
        System.out.println("Generated: " + bin.length + "[bytes]");
    }
}
