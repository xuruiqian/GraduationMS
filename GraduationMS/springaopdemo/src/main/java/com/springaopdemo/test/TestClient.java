package com.springaopdemo.test;

import com.springaopdemo.services.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestClient {
    @Test
    public  void Test() {
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = (UserService)ac.getBean("userService");
        userService.update(2);
        userService.add();
    }
}
