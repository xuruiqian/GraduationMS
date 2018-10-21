package com.springmvcdemo.controller;

import com.springmvcdemo.entity.User;
import com.springmvcdemo.service.contract.IUserService;
import com.springmvcdemo.service.implementation.UserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class ControllerBase {

    public ApplicationContext applicationContext;

    //在setUp这个方法得到spring容器
    @Before
    public void Init() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
    }

    @Test
    public void ServiceFromSpringframworkTest() {
        IUserService us = (UserService) applicationContext.getBean("userService");
        List<User> userList = us.GetUserList();
        System.out.println("applicationContext: " + us);
        for (User user : userList) {
            System.out.println(user);
            System.out.println("LoginName: " + user.getLoginname()
                    + ",Password: " + user.getPassword()
                    + ",UserName: " + user.getUsername());
        }
    }
}
