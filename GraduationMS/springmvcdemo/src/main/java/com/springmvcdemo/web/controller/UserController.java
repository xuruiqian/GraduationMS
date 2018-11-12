package com.springmvcdemo.web.controller;

import com.springmvcdemo.DataRepository.Domain.UserWithBLOBs;
import com.springmvcdemo.DataRepository.Option.AuthorityType;
import com.springmvcdemo.web.authority.Authority;
import com.springmvcdemo.Service.Contract.IUserService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "user")
public class UserController extends ControllerBase {
    private static final Log logger = LogFactory.getLog(UserController.class);
    private static List<UserWithBLOBs> userList;

    public UserController() {
        userList = new ArrayList<UserWithBLOBs>();
    }

    @Authority(AuthorityType.Validate)
    @RequestMapping(value = "summary", method = RequestMethod.GET)
    public ModelAndView UserSummary() {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        IUserService us = (IUserService) applicationContext.getBean("UserService");
        List<UserWithBLOBs> userList = us.GetUserList();
        Map<String, List<UserWithBLOBs>> data = new HashMap<String, List<UserWithBLOBs>>();
        data.put("userList", userList);

        return new ModelAndView("User/Summary", data);
    }


    @Authority(AuthorityType.Validate)
    @RequestMapping(value = "/CreateForm", method = RequestMethod.GET)
    public String GetUserCreate() {
        return "/User/Create";
    }


    @Authority(AuthorityType.Validate)
    @RequestMapping(value = "/Create", method = RequestMethod.POST)
    public String PostUserCreate() {
        return "redirect:/User/Detail";
    }

    @Authority(AuthorityType.Validate)
    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public ModelAndView GetUserDetail() {
        UserWithBLOBs user = new UserWithBLOBs();
        user.setName("User-" + 1);
        user.setPassword("Password-" + 1);

        return new ModelAndView("/User/Detail", "user", user);
    }
}