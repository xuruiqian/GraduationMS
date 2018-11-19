package com.springmvcdemo.Web.Controller;

import com.springmvcdemo.Data.Domain.UserWithBLOBs;
import com.springmvcdemo.Data.Option.AuthorityType;
import com.springmvcdemo.Web.Annotations.Authority;
import com.springmvcdemo.Service.Contract.IUserService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "User")
public class UserController extends ControllerBase {
    private static final Log logger = LogFactory.getLog(UserController.class);
    private static List<UserWithBLOBs> userList;

    public UserController() {
        userList = new ArrayList<UserWithBLOBs>();
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "Summary", method = RequestMethod.GET)
    public ModelAndView UserSummary() {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        IUserService us = (IUserService) applicationContext.getBean("UserService");
        List<UserWithBLOBs> userList = us.GetUsers();
        Map<String, List<UserWithBLOBs>> data = new HashMap<String, List<UserWithBLOBs>>();
        data.put("userList", userList);

        return new ModelAndView("User/Summary", data);
    }


    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/CreateForm", method = RequestMethod.GET)
    public String GetUserCreate() {
        return "/User/Create";
    }


    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/Create", method = RequestMethod.POST)
    public String PostUserCreate() {
        return "redirect:/User/Detail";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "Detail", method = RequestMethod.GET)
    public ModelAndView GetUserDetail(@RequestParam("username") String username) {
        UserWithBLOBs user = new UserWithBLOBs();
        user.setName("User-" + 1);
        user.setPassword("Password-" + 1);

        return new ModelAndView("/User/Detail", "user", user);
    }
    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "Profile", method = RequestMethod.GET)
    public ModelAndView GetUserProfile(@RequestParam("username") String username) {
        UserWithBLOBs user = new UserWithBLOBs();
        user.setName("User-" + 1);
        user.setPassword("Password-" + 1);

        return new ModelAndView("/User/Detail", "user", user);
    }
}