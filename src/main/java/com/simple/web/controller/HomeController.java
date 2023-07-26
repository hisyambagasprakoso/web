package com.simple.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/home")
    public String index(Model m){
        m.addAttribute("hallo");
        return "home";
    }

    @GetMapping("/form")
    public String createForm(Model m){
        m.addAttribute("form1");
        return "form";
    }
}
