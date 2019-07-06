package com.bilibili.cn;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration("src/main/resources")
@ContextConfiguration(locations = {"classpath:spring/spring-*.xml"})
public class BaseTest {
    protected Logger LOG = Logger.getLogger(BaseTest.class);

    @Test
    public void test(){
        System.out.println("测试开始");
    }
}
