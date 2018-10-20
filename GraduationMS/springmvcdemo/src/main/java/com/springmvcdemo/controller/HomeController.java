package com.springmvcdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/Home")
public class HomeController {
    @ResponseBody
    @RequestMapping(value = "/Index", method = RequestMethod.GET)
    public String GetIndex(){
        System.out.println("hello,GetIndex!");
        return "success";
    }
    @ResponseBody
    @RequestMapping(value = "/Index", method = RequestMethod.POST)
    public String PostIndex(){
        System.out.println("hello,PostIndex!");
        return "success";
    }
}
