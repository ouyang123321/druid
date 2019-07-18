package com.tlzx.combine.controller;

import com.tlzx.combine.model.RequestData;
import com.tlzx.combine.service.impl.BaseTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class RequestDataControllerTest extends BaseTest {

    @Autowired
    private RequestDataController requestDataController;

    private RequestData requestData;

    @Override
    public void before() {
        requestData = new RequestData();
        super.before();
    }

    @Test
    public void getTop() {
        requestData.setType("callCardService");
        requestData.setFn("isScreenOpen");
        requestDataController.getTop(requestData);
    }
}