package com.woniu.cat.controller.restapi;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class FirstRestApi {

    @GetMapping("/home")
    public String home() {
        return "Hello World， This is API in restful.";
    }
}
