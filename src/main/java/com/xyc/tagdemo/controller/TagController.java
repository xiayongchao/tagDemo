package com.xyc.tagdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by xyc on 2017/8/7 0007.
 */
@Controller
@RequestMapping("/tag")
public class TagController {
    @GetMapping("/test")
    public String test(Map<String, Object> model) {

        return "test";
    }
}
