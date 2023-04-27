package com.kbstar.controller;


import com.kbstar.Service.CustService;
import com.kbstar.dto.Cust;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Slf4j
@Controller
@RequestMapping("/cust")
//cust로 호출된거는 다 여기서 처리하겠다!!
public class CustController {
   // Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    //이거 대신 @Slf4j
    String dir = "cust/";

    //여기서 ""는 127.0.0.1/cust/가 되는것! "/"을 넣어주면 안된다
    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"center");
       // logger.info("------------------------------------------------------");
        //@Slf4j 활용하면  log.____로 가능함.
        //http://127.0.0.1/logs/custinfo.log 이제 여기 들어가면 로그찍히는거 볼수 있음.
        Random r = new Random();
        int inx = r.nextInt(1000)+1;
        log.info(inx+"");
        //log  안에는  string 만 들어갈 수 있음.
        return "index";
    }

    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"add");
        return "index";
    }

    @Autowired
    CustService service;
    @RequestMapping("/all")
    public String all(Model model) {
        List<Cust> list = null;
        try {
            list = service.get();
            for(Cust cust:list){
                log.info(cust.toString());}

        } catch (Exception e) {
            log.info("시스템 장애입니다.---------------------------------------------");
            e.printStackTrace();
        }

        model.addAttribute("clist",list);

        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"all");
        return "index";
    }

    @RequestMapping("/get")
    public String get(Model model, String id) {
        Cust cust = new Cust(id,"xxx","james");
        model.addAttribute("gcust",cust);
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"get");
        return "index";
    }

}