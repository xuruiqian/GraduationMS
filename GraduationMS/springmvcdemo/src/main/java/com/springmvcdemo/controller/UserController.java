package com.springmvcdemo.controller;

import com.springmvcdemo.entity.User;
import com.springmvcdemo.service.contract.IService;
import com.springmvcdemo.service.implementation.Service;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "user")
public class UserController extends ControllerBase {

    private static List<User> userList;

    public UserController() {
        userList = new ArrayList<User>();
    }

    private static final Log logger = LogFactory.getLog(UserController.class);

    @RequestMapping(value = "/RegisterForm", method = RequestMethod.GET)
    public String registerForm() {
        return "User/registerForm";
    }

    @RequestMapping(value = "/Register", method = RequestMethod.POST)
    public String register(@RequestParam("loginname") String loginname,
                           @RequestParam("password") String password,
                           @RequestParam("username") String username) {
        User user = new User();
        user.setLoginname(loginname);
        user.setPassword(password);
        user.setUsername(username);
        userList.add(user);

        return "loginForm";
    }

    @RequestMapping(value = "/Login")
    public String login(@RequestParam("loginname") String loginname,
                        @RequestParam("password") String password,
                        Model model) {
        logger.info("loginname:" + loginname + " password:" + password);

        for (User user : userList) {
            if (user.getLoginname().equals(loginname) &&
                    user.getPassword().equals(password)) {
                model.addAttribute("user", user);
                return "welcome";
            }
        }
        return "loginForm";
    }

    @RequestMapping(value = "summary", method = RequestMethod.GET)
    public ModelAndView UserSummary() {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        IService us = (Service) applicationContext.getBean("userService");
        List<User> userList = us.GetUserList();
        System.out.println("applicationContext: " + us);
        for (User user : userList) {
            System.out.println(user);
            System.out.println("LoginName: " + user.getLoginname()
                    + ",Password: " + user.getPassword()
                    + ",UserName: " + user.getUsername());
        }
        Map<String, List<User>> data = new HashMap<String, List<User>>();
        data.put("userList", userList);
        return new ModelAndView("User/Summary", data);
    }

    @RequestMapping(value = "/CreateForm", method = RequestMethod.GET)
    public String GetUserCreate() {
        return "/User/Create";
    }

    @RequestMapping(value = "/Create", method = RequestMethod.POST)
    public String PostUserCreate() {
        return "redirect:/User/Detail";
    }
    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public ModelAndView GetUserDetail() {
        User user = new User();
        user.setUsername("User-" + 1);
        user.setLoginname("LoginName-" + 1);
        user.setPassword("Password-" + 1);

        int i=0;
        int j=1;
        int x=j/i;

        return new ModelAndView("/User/Detail","user",user);
    }
}