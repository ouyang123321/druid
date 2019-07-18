package com.tlzx.druiddemo.controller;

import com.tlzx.druiddemo.BaseTest;
import com.tlzx.druiddemo.model.User;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class UserControllerTest extends BaseTest {

    @Autowired
    private UserController userController;

    private User user;

    @Override
    public void before() {
        super.before();
        user = new User();
    }

    /*@Before
    public void setUp() throws Exception {
        super.before();

    }*/

    @Test
    public void selectU() {
        user.setUgid(1);
        User u = userController.selectU(1);
        System.out.println(u);
    }
}