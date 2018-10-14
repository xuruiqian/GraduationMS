package com.gt.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/Security")
public class SecurityController {

    @RequestMapping(value = "/UserSummary", method = RequestMethod.POST)
    public String UserSummary() {
        return "";
    }
    @RequestMapping(value = "/UserDetail", method = RequestMethod.POST)
    public String UserDetail() {
        return "";
    }
}
