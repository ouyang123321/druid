package com.tlzx.combine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

/*@Controller*/
public class TestController {
    /*@RequestMapping("/login")
    public String tologin(){
        return "login";
    }
*/
    String a="AAAAAAAAAAA";

    public static void main(String[] args) {
        /*System.out.println(a);*/
        Hello h=new Hello();
        Map m=new HashMap();
        m.put(1,"ds");
        m.values().equals("ds");
        //System.out.println(h.da);
        System.out.println(m+",,,,"+m.values());
        System.out.println(m.values().equals("ds"));
    }
/**/
    /*
    * OuYang-ym
    * OuYang68
    * */
    /*下班打卡之后再去跑步还是跑完步之后再来打卡？下班后回去吃饭，吃完饭的时候回来先下单东西，下完单之后再记单词，然后花一个小时后的样子学习springcloud，学完之后回去洗澡洗头发，然后就又接着记单词，晚上十一点半睡觉，每天早上七点五十起床。尽量在20分钟之内把事情做完然后八点一十的样子出门，十五的样子到公司，打水吃早餐*/
}