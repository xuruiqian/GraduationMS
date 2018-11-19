package com.springmvcdemo.Service.Test;

import com.alibaba.fastjson.JSON;
import com.springmvcdemo.DataRepository.Domain.UserWithBLOBs;
import com.springmvcdemo.Service.Contract.IUserService;
import com.springmvcdemo.Utilities.DateUtil;
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
        IUserService us = (IUserService) applicationContext.getBean("UserService");
        List<UserWithBLOBs> userList = us.GetUsers();
        String jsonStr = JSON.toJSONString(userList);
        System.out.println("User List JsonStr: " + jsonStr);
        for (UserWithBLOBs item : userList) {
            System.out.println("ID: " + item.getId().toString()
                    + "\t Name: " + item.getName().toString()
                    + "\t Password: " + item.getPassword().toString()
                    + "\t Email: " + item.getEmail().toString()
                    + "\t Gender: " + item.getGender().toString()
                    + "\t CreateTime: " + DateUtil.FormatDate(item.getCreatetime())
                    + "\t Level: " + item.getLevel().toString()
                    + "\t UpdateTime: " + DateUtil.FormatDate(item.getUpdatetime())
                    + "\t Remark: " + item.getRemark().toString());
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
}
