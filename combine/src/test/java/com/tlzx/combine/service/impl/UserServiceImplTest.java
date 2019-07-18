package com.tlzx.combine.service.impl;

import com.tlzx.combine.model.User;
import com.tlzx.combine.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class UserServiceImplTest extends BaseTest {

    @Autowired
    private UserService userService;

    private User user;

    @Override
    public void before() {
        super.before();
        user = new User();
    }

    @Test
    public void userLogin() {
        user.setUnumber("2698195896");
        user.setUpwd("213");
        User u = userService.userLogin(user.getUnumber(), user.getUpwd());
        System.out.println(u);
    }

    @Test
    public void selectByPrimaryKey(){
        User u = userService.selectByPrimaryKey(1);
        System.out.println(u);
    }

    @Test
    public void insertSelective(){
        //user.setUgid(1);
        //user.setUpwd("");
        user.setUnumber("");
        user.setUmail("");
        int i = userService.insertSelective(user);
        System.out.println(user);
        if (i>0){
            System.out.println("成功获得一个客户");
        }
    }/**/
}