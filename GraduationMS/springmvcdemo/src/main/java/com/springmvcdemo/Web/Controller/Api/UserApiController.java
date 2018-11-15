package com.springmvcdemo.Web.Controller.Api;

import com.alibaba.fastjson.JSON;
import com.springmvcdemo.DataRepository.Domain.UserWithBLOBs;
import com.springmvcdemo.DataRepository.Option.AuthorityType;
import com.springmvcdemo.Web.Authority.Authority;
import com.springmvcdemo.Web.Controller.ControllerBase;
import com.springmvcdemo.Service.Contract.IUserService;
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
        List<UserWithBLOBs> userList = us.GetUserList();
        String jsonStr = JSON.toJSONString(userList);
        System.out.println("User List JsonStr: " + jsonStr);

        return jsonStr;
    }
}