package com.springmvcdemo.web.controller;

import org.junit.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class ControllerBase implements HandlerExceptionResolver {
    public ApplicationContext applicationContext;
    private static final Logger logger = LoggerFactory.getLogger(ControllerBase.class);

    //在setUp这个方法得到spring容器
    @Before
    public void Init() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
    }

    /**
     * Global exception handler
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