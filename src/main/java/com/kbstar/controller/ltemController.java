package com.kbstar.controller;


import com.kbstar.dto.Item;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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

    @RequestMapping("/all")
    public String all(Model model) {
        List<Item> list = new ArrayList<>();
        list.add(new Item(100, "pants", 1000, "자화상컵.jpeg", new Date()));
        list.add(new Item(200, "pants", 1000, "명화담요.jpeg", new Date()));
        list.add(new Item(300, "pants", 1000, "케이스.jpeg", new Date()));
        list.add(new Item(400, "pants", 1000, "큐브.jpeg", new Date()));
        list.add(new Item(500, "pants", 1000, "티셔츠.jpeg", new Date()));
        model.addAttribute("allItem", list);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "all");
        return "index";
    }


}