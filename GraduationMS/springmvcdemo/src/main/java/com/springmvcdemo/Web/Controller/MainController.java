package com.springmvcdemo.Web.Controller;

import com.springmvcdemo.DataRepository.Option.AuthorityType;
import com.springmvcdemo.Web.Annotations.Authority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/")
public class MainController extends ControllerBase {
    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/Main.html", method = RequestMethod.GET)
    public String GetMain() {
        return "Main";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/Search", method = RequestMethod.POST)
    public String GetSearch(@RequestParam(value = "condition",required = true) String condition) {
        return "Main";
    }

}