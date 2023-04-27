package com.kbstar.controller;


import com.kbstar.dto.Cust;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/jsp")
//cust로 호출된거는 다 여기서 처리하겠다!!  
public class JSPController {
    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "jsp/";

    //여기서 ""는 127.0.0.1/list/가 되는것! "/"을 넣어주면 안된다
    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "center");
        return "index";
    }

    @RequestMapping("/jsp01")
    public String jsp01(Model model) {
        model.addAttribute("num", "10000.234");
        Cust custDTO = new Cust("id01", "pwd01", "<a href=''>k</a>");
        //name에 <a href=''>k</a> 넣으면 링크걸림... 해커들이 많이 사용하는 방법..
        //그래서 특수문자를 막아야하겠구나,,,출력할때도 보안적으로 막아야겠네
        // 출력할 때  <p><c:out value="${cust.name}"></c:out> </p> 으로 출력하면 k가 아니라 <a href=''>k</a>게 그냥 문자열로 출력됨(링크 안걸림)
        model.addAttribute("cust", custDTO);
        Date date = new Date();
        model.addAttribute("cdate", date);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "jsp01");

        return "index";
    }

    @RequestMapping("/jsp02")
    public String jsp02(Model model) {
        Cust custDTO = new Cust("id01", "pwd01", "james");
        model.addAttribute("num", "1");
        model.addAttribute("rcust", custDTO);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "jsp02");
        return "index";
    }

    @RequestMapping("/jsp03")
    public String jsp03(Model model) {
        List<Cust> list = new ArrayList<>();
        list.add(new Cust("id01", "pwd01", "james"));
        list.add(new Cust("id02", "pwd01", "james2"));
        list.add(new Cust("id03", "pwd01", "james3"));
        list.add(new Cust("id04", "pwd01", "james4"));
        list.add(new Cust("id05", "pwd01", "james5"));
        model.addAttribute("clist",list);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "jsp03");
        return "index";
    }

    @RequestMapping("/jsp04")
    public String jsp04(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "jsp04");
        return "index";
    }

    @RequestMapping("/jsp05")
    public String jsp05(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "jsp05");
        return "index";
    }

}