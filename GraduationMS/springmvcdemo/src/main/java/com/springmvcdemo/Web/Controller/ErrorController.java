package com.springmvcdemo.Web.Controller;

import com.springmvcdemo.Data.Option.AuthorityType;
import com.springmvcdemo.Web.Annotations.Authority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/Error")
public class ErrorController extends ControllerBase {

    @Authority(AuthorityType.Pass)
    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public String Get404() {
        return "Error/404";
    }

    @Authority(AuthorityType.Pass)
    @RequestMapping(value = "/500", method = RequestMethod.GET)
    public String Get500() {
        return "Error/500";
    }
    @Authority(AuthorityType.Pass)
    @RequestMapping(value = "/Forbidden", method = RequestMethod.GET)
    public String GetForbidden() {
        return "Error/Forbidden";
    }
}