package com.springmvcdemo.UnitTest;

import com.springmvcdemo.Data.Dao.Implementation.UserDao;
import com.springmvcdemo.Data.Domain.UserWithBLOBs;
import com.springmvcdemo.Service.Contract.IUserService;
import com.springmvcdemo.Web.Controller.ControllerBase;
import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public class UserServiceTest {
    public ApplicationContext applicationContext;
    private static final Logger logger = LoggerFactory.getLogger(ControllerBase.class);

    @Before
    public void Init() {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
    }

    @Test
    public void TestGetUsers() {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        IUserService us = (IUserService) applicationContext.getBean("userService");
        List<UserWithBLOBs> users = us.GetUsers();
        for (UserWithBLOBs item : users) {
            System.out.println(item.toString());
        }
    }

    @Test
    public void TestCreateUser() {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        IUserService us = (IUserService) applicationContext.getBean("UserService");
        List<UserWithBLOBs> users = new ArrayList<UserWithBLOBs>();
        for (int i = 0; i < 10; i++) {

            UserWithBLOBs record = new UserWithBLOBs();
            record.setId(UUID.randomUUID().toString());
            record.setName("User-" + i);
            record.setPassword("123456");
            record.setEmail("xxx@sina.com");
            record.setPhonenum("13830003970");
            record.setGender(false);
            record.setCreatetime(new Date());
            record.setIsdeleted(false);
            record.setLevel(1);
            record.setUpdatetime(new Date());
            record.setRemark("Remark for this user-" + i);

            users.add(record);
        }
        us.CreateUsers(users);
    }


    @Test
    public void Query() {
        List<UserWithBLOBs> users = new UserDao().GetAll();
        for (UserWithBLOBs item : users) {
            System.out.println(item.toString());
        }
    }
}
