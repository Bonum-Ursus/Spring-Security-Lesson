package com.BonumUrsus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
    @GetMapping(value = "/")
    public String getHomePage(){
        return "home-page";
    }
}