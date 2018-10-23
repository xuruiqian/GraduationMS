package com.springmvcdemo.controller.api;

import com.alibaba.fastjson.JSON;
import com.springmvcdemo.Authority.Authority;
import com.springmvcdemo.controller.ControllerBase;
import com.springmvcdemo.entity.User;
import com.springmvcdemo.option.AuthorityType;
import com.springmvcdemo.service.contract.IService;
import com.springmvcdemo.service.implementation.Service;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "/Api/User")
public class UserApiController extends ControllerBase {

    @ResponseBody
    @Authority(AuthorityType.Validate)
    @RequestMapping(value = "/Summary", method = RequestMethod.GET)
    public String GetUserSummary() {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        IService us = (IService) applicationContext.getBean("service");
        List<User> userList = us.GetUserList();
        System.out.println("applicationContext: " + us);
        for (User user : userList) {
            System.out.println(user);
            System.out.println("LoginName: " + user.getLoginname()
                    + ",Password: " + user.getPassword()
                    + ",UserName: " + user.getUsername());
        }
        return JSON.toJSONString(userList);
    }
}