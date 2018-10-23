package com.springmvcdemo.web.controller;

import com.springmvcdemo.web.authority.Authority;
import com.springmvcdemo.domain.option.AuthorityType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/Home")
public class HomeController  extends ControllerBase {

    @Authority(AuthorityType.Validate)
    @RequestMapping(value = "/Index", method = RequestMethod.GET)
    public String GetIndex() {
        System.out.println("hello,GetIndex!");
        return "Home/Index";
    }


    @Authority(AuthorityType.Validate)
    @RequestMapping(value = "/Index", method = RequestMethod.POST)
    public String PostIndex() {
        System.out.println("hello,PostIndex!");
        return "Home/Index";
    }


    @Authority(AuthorityType.Validate)
    @RequestMapping(value = "/Welcome", method = RequestMethod.GET)
    public String PostWelcome() {
        System.out.println("hello,PostWelcome!");
        return "Home/Welcome";
    }
}