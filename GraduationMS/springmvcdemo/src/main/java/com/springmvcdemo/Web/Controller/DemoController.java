package com.springmvcdemo.Web.Controller;

import com.springmvcdemo.DataRepository.Option.AuthorityType;
import com.springmvcdemo.Web.Annotations.Authority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/Demo")
public class DemoController extends ControllerBase {

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        System.out.println("hello,GetIndex!");
        return "Demo/index";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/buttons_and_icons", method = RequestMethod.GET)
    public String buttons_and_icons() {
        System.out.println("hello,GetIndex!");
        return "Demo/buttons_and_icons";
    }


    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/tables", method = RequestMethod.GET)
    public String tables() {
        System.out.println("hello,PostIndex!");
        return "Demo/tables";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/timeline", method = RequestMethod.GET)
    public String timeline() {
        System.out.println("hello,PostIndex!");
        return "Demo/timeline";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/inplace_editing", method = RequestMethod.GET)
    public String inplace_editing() {
        System.out.println("hello,PostIndex!");
        return "Demo/inplace_editing";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/todo", method = RequestMethod.GET)
    public String todo() {
        System.out.println("hello,PostIndex!");
        return "Demo/todo";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/fileupload", method = RequestMethod.GET)
    public String fileupload() {
        System.out.println("hello,PostIndex!");
        return "Demo/fileupload";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/form_components", method = RequestMethod.GET)
    public String form_components() {
        System.out.println("hello,PostIndex!");
        return "Demo/form_components";
    }
    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/form_styles", method = RequestMethod.GET)
    public String form_styles() {
        System.out.println("hello,PostIndex!");
        return "Demo/form_styles";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/validations", method = RequestMethod.GET)
    public String validations() {
        System.out.println("hello,PostIndex!");
        return "Demo/validations";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/wizard", method = RequestMethod.GET)
    public String wizard() {
        System.out.println("hello,PostIndex!");
        return "Demo/wizard";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/faq", method = RequestMethod.GET)
    public String faq() {
        System.out.println("hello,PostIndex!");
        return "Demo/faq";
    }

    @Authority(AuthorityType.HasSession)
    @RequestMapping(value = "/invoice", method = RequestMethod.GET)
    public String invoice() {
        System.out.println("hello,PostIndex!");
        return "Demo/invoice";
    }

}