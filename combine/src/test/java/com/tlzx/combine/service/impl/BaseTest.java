package com.tlzx.combine.service.impl;

import com.tlzx.combine.CombineApplication;
import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = CombineApplication.class)//APP.class指的是启动类
public class BaseTest {

    @Before
    public void before(){

    }

}

