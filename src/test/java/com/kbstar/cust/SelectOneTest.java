package com.kbstar.cust;

import com.kbstar.Service.CustService;
import com.kbstar.dto.Cust;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

@Slf4j
@SpringBootTest
class SelectOneTest {
    @Autowired
    CustService service;

    @Test
    void contextLoads() throws Exception{

        try {
            service.get("id012222");
            log.info(getClass().toString());
        } catch (Exception e) {
            log.info("시스템 장애입니다.---------------------------------------------");
        }
    }

}
