package com.tlzx.druiddemo.controller;

import com.tlzx.druiddemo.model.User;
import com.tlzx.druiddemo.server.UserServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    private UserServer userServer;

    private User user;

    @ModelAttribute
    public void init(Model model){
        user = new User();
        model.addAttribute("user",user);
    }

    @RequestMapping("/user")
    public User selectU(int uid){
        User u = userServer.selectByPrimaryKey(uid);
        return u;
    }

}
