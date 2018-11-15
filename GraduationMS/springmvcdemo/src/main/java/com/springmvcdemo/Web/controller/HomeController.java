package com.springmvcdemo.Web.Controller;

import com.springmvcdemo.DataRepository.Option.AuthorityType;
import com.springmvcdemo.Web.Authority.Authority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/home")
public class HomeController  extends ControllerBase {

    @Authority(AuthorityType.NoAuthority)
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String GetIndex() {
        System.out.println("hello,GetIndex!");
        return "home/index";
    }


    @Authority(AuthorityType.NoAuthority)
    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String PostIndex() {
        System.out.println("hello,PostIndex!");
        return "home/index";
    }


    @Authority(AuthorityType.NoAuthority)
    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String PostWelcome() {
        System.out.println("hello,PostWelcome!");
        return "home/Welcome";
    }
}