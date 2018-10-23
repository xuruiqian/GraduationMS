package com.springmvcdemo.controller;

import com.springmvcdemo.entity.User;
import com.springmvcdemo.service.contract.IService;
import com.springmvcdemo.service.implementation.Service;
import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class ControllerBase implements HandlerExceptionResolver {
    public ApplicationContext applicationContext;
    private static final Logger logger = LoggerFactory.getLogger(ControllerBase.class);

    //在setUp这个方法得到spring容器
    @Before
    public void Init() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
    }

    @Test
    public void ServiceFromSpringframworkTest() {
        IService us = (Service) applicationContext.getBean("service");
        List<User> userList = us.GetUserList();
        System.out.println("applicationContext: " + us);
        for (User user : userList) {
            System.out.println(user);
            System.out.println("LoginName: " + user.getLoginname()
                    + ",Password: " + user.getPassword()
                    + ",UserName: " + user.getUsername());
        }
    }

    /**
     *
     * Global exception handler
     *
     */
    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest,
                                         HttpServletResponse httpServletResponse,
                                         Object o,
                                         Exception e) {
        System.out.println(e);
        logger.error(e.getStackTrace().toString());
        return new ModelAndView("redirect:/Help/500.html");
    }
}