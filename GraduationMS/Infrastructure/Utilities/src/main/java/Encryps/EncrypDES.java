package Encryps;

import javax.crypto.*;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

public class EncrypDES {
    private KeyGenerator keygen;    //SecretKey 负责保存对称密钥
    private SecretKey deskey;    //Cipher负责完成加密或解密工作
    private Cipher c;    //该字节数组负责保存加密的结果
    private byte[] cipherByte;

    public EncrypDES() {
//        Security.addProvider(new SunJCE());        //实例化支持DES算法的密钥生成器(算法名称命名需按规定，否则抛出异常)
//        keygen = KeyGenerator.getInstance("DES");        //生成密钥
//        deskey = keygen.generateKey();        //生成Cipher对象,指定其支持的DES算法
//        c = Cipher.getInstance("DES");
    }

    public byte[] Encrytor(String str) throws InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
        // 根据密钥，对Cipher对象进行初始化，ENCRYPT_MODE表示加密模式
        c.init(Cipher.ENCRYPT_MODE, deskey);
        byte[] src = str.getBytes();        // 加密，结果保存进cipherByte
        cipherByte = c.doFinal(src);
        return cipherByte;
    }

    public byte[] Decryptor(byte[] buff) throws InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
        // 根据密钥，对Cipher对象进行初始化，DECRYPT_MODE表示加密模式
        c.init(Cipher.DECRYPT_MODE, deskey);
        cipherByte = c.doFinal(buff);
        return cipherByte;
    }
}