package com.springicodemo.services;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringTest {
    private ApplicationContext applicationContext;
    //在setUp这个方法得到spring容器
    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
    }
    @Test
    public void test() {
        UserService us=(UserService) applicationContext.getBean("userService");
        System.out.println(us.getName());
        System.out.println(us.getHelloService().getName());
        us.sayHello();
    }
}
