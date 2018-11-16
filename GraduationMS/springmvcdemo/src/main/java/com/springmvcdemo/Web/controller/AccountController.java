package com.springmvcdemo.Web.Controller;

import com.springmvcdemo.DataRepository.Domain.UserWithBLOBs;
import com.springmvcdemo.DataRepository.Option.AuthorityType;
import com.springmvcdemo.Web.Authority.Authority;
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

    /**
     * Sign Up (Register a new account or user into system.)
     *
     * @return
     */
    @RequestMapping(value = "/SignUp", method = RequestMethod.GET)
    public String GetSignUp() {
        return "/Account/SignUp";
    }

    @Authority(AuthorityType.Pass)
    @RequestMapping(value = "/PostSignUp", method = RequestMethod.POST)
    public String PostSignUp(@RequestParam("username") String username,
                             @RequestParam("email") String email,
                             @RequestParam("password") String password,
                             @RequestParam("password_confirmation") String password_confirmation,
                             @RequestParam(value = "agreement", required = false) String agreement) {

        return "redirect:/Account/SignIn";
    }

    /**
     * Sign into system after authorized.
     *
     * @return
     */
    @Authority(AuthorityType.Pass)
    @RequestMapping(value = "/SignIn", method = RequestMethod.GET)
    public String GetSignIn() {
        return "/Account/SignIn";
    }

    @Authority(AuthorityType.Pass)
    @RequestMapping(value = "/PostSignIn", method = RequestMethod.POST)
    public String PostSignIn(@RequestParam("username") String username,
                             @RequestParam("password") String password,
                             @RequestParam(value = "remember_me", required = false) String remember_me) {
        UserWithBLOBs user = new UserWithBLOBs();
        user.setName(username);
        user.setPassword(password);

        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
                .getRequestAttributes())
                .getRequest();
        ServletWebRequest servletWebRequest = new ServletWebRequest(request);
        HttpServletResponse response = servletWebRequest.getResponse();

        request.getSession().setAttribute("currentUser", user);

        return "redirect:/Main.html";
    }

    /**
     * Sign Out
     *
     * @return
     */
    @RequestMapping(value = "/SignOut", method = RequestMethod.GET)
    public String GetSignOut(@RequestParam("username") String username) {
        UserWithBLOBs user = new UserWithBLOBs();
        user.setName(username);

        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
                .getRequestAttributes())
                .getRequest();
        ServletWebRequest servletWebRequest = new ServletWebRequest(request);
        HttpServletResponse response = servletWebRequest.getResponse();

        request.getSession().setAttribute("currentUser", null);

        return "redirect:/Account/SignIn";
    }


    /**
     * Find back password
     *
     * @return
     */
    @Authority(AuthorityType.Pass)
    @RequestMapping(value = "/FindBackPassword", method = RequestMethod.GET)
    public String GetFindBackPassword() {
        return "/Account/FindBackPassword";
    }

    @Authority(AuthorityType.Pass)
    @RequestMapping(value = "/PostFindBackPassword", method = RequestMethod.POST)
    public String PostFindBackPassword(@RequestParam("email") String email,
                                       @RequestParam(value="password",required = false) String password) {

        return "redirect:/Account/SignIn";
    }
}