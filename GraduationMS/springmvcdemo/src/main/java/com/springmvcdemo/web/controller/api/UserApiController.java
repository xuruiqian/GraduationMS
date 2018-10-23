package com.springmvcdemo.web.controller.api;

import com.alibaba.fastjson.JSON;
import com.springmvcdemo.web.authority.Authority;
import com.springmvcdemo.web.controller.ControllerBase;
import com.springmvcdemo.domain.entity.User;
import com.springmvcdemo.domain.option.AuthorityType;
import com.springmvcdemo.service.contract.IUserService;
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
        IUserService us = (IUserService) applicationContext.getBean("UserService");
        List<User> userList = us.GetUserList();
        String jsonStr = JSON.toJSONString(userList);
        System.out.println("User List JsonStr: " + jsonStr);

        return jsonStr;
    }
}