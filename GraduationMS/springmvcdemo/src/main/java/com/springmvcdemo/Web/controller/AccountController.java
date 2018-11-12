package com.springmvcdemo.Web.Controller;

import com.springmvcdemo.DataRepository.Domain.UserWithBLOBs;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.request.ServletWebRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/Account")
public class AccountController extends ControllerBase {

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public String GetLogin() {
        return "/Account/Login";
    }

    @RequestMapping(value = "/DoLogin", method = RequestMethod.POST)
    public String PostLogin(@RequestParam("loginname") String loginname,
                            @RequestParam("password") String password) {
        UserWithBLOBs user = new UserWithBLOBs();
        user.setName(loginname);
        user.setPassword(password);

        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
                .getRequestAttributes())
                .getRequest();
        ServletWebRequest servletWebRequest = new ServletWebRequest(request);
        HttpServletResponse response = servletWebRequest.getResponse();

        request.getSession().setAttribute("currentUser", user);

        return "redirect:/Home/Index";
    }
}