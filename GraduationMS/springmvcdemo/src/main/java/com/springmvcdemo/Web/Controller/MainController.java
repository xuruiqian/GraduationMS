package com.springmvcdemo.Web.Controller;

import com.springmvcdemo.DataRepository.Option.AuthorityType;
import com.springmvcdemo.Web.Authority.Authority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class MainController extends ControllerBase {
    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/Main.html", method = RequestMethod.GET)
    public String GetMain() {
        return "Main";
    }
}