import Encryps.EncrypDES;
import org.apache.log4j.Logger;
import org.junit.Test;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

public class TestErrOut {

    private static final Logger logger = Logger.getLogger(TestErrOut.class);

    @Test
    public void TestLog() throws NoSuchPaddingException, NoSuchAlgorithmException, BadPaddingException, InvalidKeyException, IllegalBlockSizeException {
        logger.debug("This is debug!");
        logger.info("This is info!");
        logger.warn("This is warn!");
        logger.error("This is error!");
        logger.fatal("This is fatal!");
    }
}