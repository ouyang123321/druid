package com.tlzx.combine.controller;

import com.tlzx.combine.model.User;
import com.tlzx.combine.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    private User user;

    @ModelAttribute
    public void init(Model model){
        user = new User();
        model.addAttribute("user",user);
    }/**/

    @RequestMapping("/login")
    public String login(Model model,User user){
        userService.userLogin(user.getUnumber(),user.getUpwd());
        return "index";/*redirect:/index*/
    }

    @RequestMapping("/regist")
    public String register(){
        userService.insertSelective(user);
        return "login";
    }
/**/
}
