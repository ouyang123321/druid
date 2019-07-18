package com.tlzx.druiddemo.server.impl;

import com.tlzx.druiddemo.BaseTest;
import com.tlzx.druiddemo.model.User;
import com.tlzx.druiddemo.server.UserServer;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class UserServerImplTest extends BaseTest {

    @Autowired
    private UserServer userServer;  /*这里注入接口，并非实现类*/

    private User user;

    @Override
    public void before() {
        super.before();
        user = new User();
    }

    @Test
    public void selectByPrimaryKey() {
        User u = userServer.selectByName("ouayng");
        System.out.println(u);
    }

    @Test
    public void selectByUid(){
        User u = userServer.selectByPrimaryKey(1);
        System.out.println(u);
    }
}