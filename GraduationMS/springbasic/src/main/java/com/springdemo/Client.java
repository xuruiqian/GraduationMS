package com.springdemo;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Client {
    @Test
    public void Test() {
        ApplicationContext context = new ClassPathXmlApplicationContext(new String[]{"applicationContext.xml"});
        Api api = (ApiTwo)context.getBean("api");
        String result = api.test(123);
        System.out.println("result = " + result);
    }
}