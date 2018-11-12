package mybatistest;

import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;

public class TestMyBatisInsert extends TestMyBatisBase {

    @Test
    public void Insert() {

//        System.out.println(new SimpleDateFormat("yyyy/MM/dd hh:mm:ss").format( new Date()));
//        System.out.println(Calendar.getInstance());
//        System.out.println(new SimpleDateFormat("yyyy/MM/dd hh:mm:ss").format(Calendar.getInstance().getTime()));
//
//        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
//
//        String id = UUID.randomUUID().toString();
//        User user = new User();
//        user.setId(id);
//        user.setUsername("user-"+ Calendar.getInstance().getTime().getSeconds());
//        user.setPassword("123456");
//
//        int resulst = userMapper.insert(user);
//
//        System.out.println(resulst);
//
//        sqlSession.close();
    }
}
