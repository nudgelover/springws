package com.kbstar.app;

import com.kbstar.dto.ProductDTO;
import com.kbstar.dto.UserDTO;
import com.kbstar.frame.MyService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.List;

public class ProductCRUDTest {
    public static void main(String[] args) {
        ApplicationContext factory =
                new ClassPathXmlApplicationContext("spring.xml");

        MyService<String, ProductDTO> service =
                (MyService<String, ProductDTO>) factory.getBean("pservice");

        ProductDTO p = new ProductDTO("item01","멍푸치노",6000,5);
        service.register(p);
        service.modify(p);
        service.remove("item01");
        service.get("item01");
        service.get();
        }
    }

