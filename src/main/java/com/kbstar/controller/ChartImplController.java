package com.kbstar.controller;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;


@RestController
public class ChartImplController {

    @RequestMapping("/chart02")
    public Object chart02() {
// [{ name: 'Total imports',data: [16076, 112688, 39452, 0, 94352,30495, 21813, 95908, 11596, 53771, null, 8270]}]

        JSONObject jo = new JSONObject();
        JSONArray jaCnt = new JSONArray();

        //  DB에서 분석된 결과를 가져와야되지만 우린 없으니 랜덤으로 해보자
        JSONArray jaYear = new JSONArray();
        for (int i = 2011; i <= 2023; i++) {
            jaYear.add(i);
        }
        for (int i = 1; i <= 12; i++) {
            Random r = new Random();
            int cnt = r.nextInt(10000) + 1;
            jaCnt.add(cnt);
        }
        jo.put("category", jaYear);
        jo.put("datas", jaCnt);
        //배열이 아닌, json object 리턴!
        return jo;
    }

    @RequestMapping("/chart0301")
    public Object char0301() {
        // [[],[]]
        JSONArray ja = new JSONArray();
        for (int i = 1; i <= 5; i++) {
            Random r = new Random();
            int num = r.nextInt(20) + 1;
            JSONArray jadata = new JSONArray();
            jadata.add("data" + num);
            jadata.add(num);
            ja.add(jadata);
        }
        return ja;
    }

    @RequestMapping("/chart0302")
    public Object char0302() {
        JSONObject result = new JSONObject();

        JSONArray series = new JSONArray();

// 첫 번째 series 데이터 생성
        JSONObject series1 = new JSONObject();
        JSONArray data1 = new JSONArray();
        for (int i = 1; i <= 2; i++) {
            JSONObject obj = new JSONObject();
            obj.put("name", "name" + i);
            obj.put("value", i);
            data1.add(obj);
        }
        series1.put("name", "series1");
        series1.put("data", data1);
        series.add(series1);

// 두 번째 series 데이터 생성
        JSONObject series2 = new JSONObject();
        JSONArray data2 = new JSONArray();
        for (int i = 1; i <= 2; i++) {
            JSONObject obj = new JSONObject();
            obj.put("name", "name" + i);
            obj.put("value", i + 2);
            data2.add(obj);
        }
        series2.put("name", "series2");
        series2.put("data", data2);
        series.add(series2);

        result.put("series", series);

        return result;
    }

    @RequestMapping("/chart0303")
    public Object char0303() {
        // [[],[]]
        JSONArray ja = new JSONArray();
        for (int i = 1; i <= 5; i++) {
            Random r = new Random();
            int num = r.nextInt(20) + 1;
            JSONArray jadata = new JSONArray();
            jadata.add("data" + num);
            jadata.add(num);
            ja.add(jadata);
        }
        return ja;
    }


    @RequestMapping("/chart05")
    public Object chart05(String year) {
        JSONArray ja = new JSONArray();
        for (int i = 1; i <= 12; i++) {
            Random r = new Random();
            int num = r.nextInt(100) + 1;
            ja.add(num);

        }
        return ja;
    }

}