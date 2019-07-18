package com.tlzx.combine.controller;

import com.google.gson.Gson;
import com.tlzx.combine.model.RequestData;
import com.tlzx.combine.util.OkHttpUtil;
import okhttp3.OkHttpClient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RequestDataController {

    private RequestData requestData;

    private Gson gson;

    private OkHttpUtil okHttpUtil;

    @ModelAttribute
    public void init(Model model){
        requestData = new RequestData();
        //gson = new Gson();
        model.addAttribute("requestData",requestData);
    }

    @RequestMapping("/req")
    public String getTop(RequestData requestData){
        String json = new Gson().toJson(requestData);
        String url="http://12.1.1.180:8081/command/y16-b18-20892";
        okHttpUtil = new OkHttpUtil(new OkHttpClient());
        String s = okHttpUtil.postJsonParams(url, json);
        System.out.println("结果：："+s);
        return "";
    }


}