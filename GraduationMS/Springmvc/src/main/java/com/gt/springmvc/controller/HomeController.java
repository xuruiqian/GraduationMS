package com.gt.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/Home")
public class HomeController {

    @RequestMapping(value = "/Index", method = RequestMethod.GET)
    public String GetIndex() {
        return "Home/Index";
    }

    @RequestMapping(value = "/Index", method = RequestMethod.POST)
    public String PostIndex() {
        return "Home/Index";
    }
}