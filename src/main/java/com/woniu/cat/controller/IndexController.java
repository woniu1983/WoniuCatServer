package com.woniu.cat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping(value = {
            "/",
            "/user/login",
    })
    public String forwardIndex() {
        return "index";
    }
}
