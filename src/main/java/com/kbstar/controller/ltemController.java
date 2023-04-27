package com.kbstar.controller;


import com.kbstar.Service.ItemService;
import com.kbstar.dto.Item;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Slf4j
@Controller
@RequestMapping("/item")
//cust로 호출된거는 다 여기서 처리하겠다!!  
public class ltemController {
    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "item/";

    //여기서 ""는 127.0.0.1/list/가 되는것! "/"을 넣어주면 안된다
    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "center");
        return "index";
    }

    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "add");
        return "index";
    }
    @Autowired
    ItemService service;
    @RequestMapping("/all")
    public String all(Model model) {
        List<Item> list = null;
        try {
            list = service.get();
            for(Item obj:list){
                log.info(obj.toString());
            }
        } catch (Exception e) {
            log.info("시스템 장애입니다.");
            e.printStackTrace();
        }

        model.addAttribute("allItem", list);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "all");
        return "index";
    }


}