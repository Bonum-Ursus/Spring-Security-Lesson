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

    @GetMapping(value = "/login")
    public String goToLoggingPage(){
        return "logging-page";
    }

    @GetMapping(value = "/leaders")
    public String goToLeadersPage(){
        return "leaders-page";
    }

    @GetMapping(value = "/admins")
    public String goToAdminPage(){
        return "admin-page";
    }

    @GetMapping(value = "/access-denied")
    public String redirectToAccessDeniedPage(){
        return "access-denied-page";
    }
}
