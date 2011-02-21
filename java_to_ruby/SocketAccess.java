// This code is excerpted from http://www.slideshare.net/uehaj/dev-love-groovy2011 p.7
// written by @uehaj

import java.io.*;
import java.net.*;

public class SocketAccess {
    public static void main(String[] args) {
        Socket soc = null;
        InputStream ins = null;
        OutputStream outs = null;
        try {
            soc = new Socket("www.java-users.jp", 80);
            ins = soc.getInputStream();
            outs = soc.getOutputStream();
            outs.write("GET / HTTP/1.0\n\n".getBytes());
            BufferedReader bis = new BufferedReader(new InputStreamReader(ins));
            String line;
            while ((line = bis.readLine()) != null) {
                System.out.println(line);
            }
        }
        catch(IOException e) {
            e.printStackTrace();
            try {
                if (soc != null) soc.close();
            }
            catch(IOException ex) {}
        }
    }
}
