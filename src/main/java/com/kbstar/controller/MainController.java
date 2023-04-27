package com.kbstar.controller;

import com.kbstar.dto.Cust;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    @RequestMapping("/")
    public String main() {
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center","login");
        return "index";
    }

    @RequestMapping("/loginimpl")
    public String login(Model model, String id, String pwd) {
        logger.info(id+" "+pwd);
        model.addAttribute("center","login");
        return "index";
    }
    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("center","register");
        return "index";
    }

    @RequestMapping("/registerimpl")
    public String register(Model model, Cust custDTO) {
        logger.info("----------"+custDTO);
        model.addAttribute("rcust",custDTO);
        model.addAttribute("center","registerok");

        //자바는 이렇게 객체를 보낼 수 있다..
        return "index";
    }
    @RequestMapping("/gallary")
    public String gallary(Model model) {
        model.addAttribute("center","gallary");
        return "index";
    }
    @RequestMapping("/board")
    public String board(Model model) {
        model.addAttribute("center","board");
        return "index";
    }

    @RequestMapping("/information")
    public String imformation(Model model) {
        model.addAttribute("center","information");
        return "index";
    }
    @RequestMapping("/location")
    public String location(Model model) {
        model.addAttribute("center","location");
        return "index";
    }

//    // /quics?page=bas01
//    @RequestMapping("/quics")
//    public String quics(String page) {
//        return page;
//    }

}