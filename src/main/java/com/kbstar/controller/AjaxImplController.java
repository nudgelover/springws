package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Marker;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;


@RestController
public class AjaxImplController {
    @RequestMapping("/getservertime")
    public Object getservertime() {
        Date date = new Date();
        return date;
    }

    @RequestMapping("/checkid")
    public Object checkid(String id) {
        int result = 0;
        if (id.equals("qqqq") || id.equals("aaaa") || id.equals("ssss")) {
            result = 1;
        }
        return result;
    }

    @RequestMapping("/getdata")
    public Object getdata() {
        List<Cust> list = new ArrayList<>();
        list.add(new Cust("id01", "pwd01", "james"));
        list.add(new Cust("id02", "pwd01", "james2"));
        list.add(new Cust("id03", "pwd01", "james3"));
        list.add(new Cust("id04", "pwd01", "james4"));
        list.add(new Cust("id05", "pwd01", "james5"));
        //DB에 있는 데이터를 JSON으로 바꿔서 보내자...!(파싱하자)
        //우리 아직 DB없으니,, java object를 json으로 파싱한다!
        // JSON(javascript object notation)
        //[{},{},{},....] -> 배열
        JSONArray ja = new JSONArray();
        for (Cust obj : list) {
            JSONObject jo = new JSONObject();
            Random r = new Random();
            int i = r.nextInt(100) + 1;
            jo.put("id", obj.getId());
            jo.put("pwd", obj.getPwd());
            jo.put("name", obj.getName() + i);
            ja.add(jo);

        }
        return ja;
    }

    @RequestMapping("/markers")
    public Object markers(String loc) {
        List<Marker> list = new ArrayList<>();

        if (loc.equals("s")) {
            list.add(new Marker(100, "국밥", "http://www.nate.com", 37.5688, 126.94444, "a.png", "s"));
            list.add(new Marker(101, "떡볶이", "http://www.naver.com", 37.56, 126.96, "b.png", "s"));
            list.add(new Marker(102, "끼로끼로", "http://www.daum.net", 37.56745463, 126.92226, "c.png", "s"));

        } else if (loc.equals("b")) {
            list.add(new Marker(200, "국밥2", "http://www.nate.com", 35.19, 129.96, "a.png", "b"));
            list.add(new Marker(201, "떡볶이2", "http://www.naver.com", 38.56, 129.96, "b.png", "b"));
            list.add(new Marker(202, "끼로끼로2", "http://www.daum.net", 37.56, 129.96, "c.png", "b"));

        } else if (loc.equals("j")) {
            list.add(new Marker(300, "국밥3", "http://www.nate.com", 33.56, 126.96, "a.png", "j"));
            list.add(new Marker(301, "떡볶이3", "http://www.naver.com", 33.56, 126.95, "b.png", "j"));
            list.add(new Marker(302, "끼로끼로3", "http://www.daum.net", 33.56, 125.84, "c.png", "j"));
        }

        JSONArray ja = new JSONArray();
        for (Marker obj : list) {
            JSONObject jo = new JSONObject();
            jo.put("id", obj.getId());
            jo.put("title", obj.getTitle());
            jo.put("target", obj.getTarget());
            jo.put("lat", obj.getLat());
            jo.put("lng", obj.getLng());
            jo.put("img", obj.getImg());
            jo.put("loc", obj.getLoc());
            ja.add(jo);
        }
        return ja;
    }



}
