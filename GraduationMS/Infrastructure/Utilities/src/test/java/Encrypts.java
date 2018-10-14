import Encryps.EncrypDES;
import Encryps.EncrypDES3;
import org.junit.Test;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

public class Encrypts {


    @Test
    public void TestEncrypDES() throws NoSuchPaddingException, NoSuchAlgorithmException, BadPaddingException, InvalidKeyException, IllegalBlockSizeException {
        String msg = "123456";
        EncrypDES cncryp = new EncrypDES();
        byte[] encontent = cncryp.Encrytor(msg);
        byte[] decontent = cncryp.Decryptor(encontent);
        System.out.println("Original string:" + msg);
        System.out.println("Encryted string:" + new String(encontent));
        System.out.println("Dencryted string:" + new String(decontent));
    }

    @Test
    public void TestEncrypDES3() throws NoSuchPaddingException, NoSuchAlgorithmException, BadPaddingException, InvalidKeyException, IllegalBlockSizeException {
        String msg = "123456";
        EncrypDES3 encryptor = new EncrypDES3();
        byte[] encontent = encryptor.Encrytor(msg);
        byte[] decontent = encryptor.Decryptor(encontent);
        System.out.println("Original string:" + msg);
        System.out.println("Encryted string:" + new String(encontent));
        System.out.println("Dencryted string:" + new String(decontent));
    }
}
