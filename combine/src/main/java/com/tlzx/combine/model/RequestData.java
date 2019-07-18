package com.tlzx.combine.model;

import lombok.ToString;

@ToString
public class RequestData {
    private String type;

    private String url;

    private Boolean persistent;

    private String fn;

    private Boolean arg1;

    public RequestData(String type, String url, Boolean persistent, String fn, Boolean arg1) {
        this.type = type;
        this.url = url;
        this.persistent = persistent;
        this.fn = fn;
        this.arg1 = arg1;
    }

    public RequestData() {
        super();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Boolean getPersistent() {
        return persistent;
    }

    public void setPersistent(Boolean persistent) {
        this.persistent = persistent;
    }

    public String getFn() {
        return fn;
    }

    public void setFn(String fn) {
        this.fn = fn;
    }

    public Boolean getArg1() {
        return arg1;
    }

    public void setArg1(Boolean arg1) {
        this.arg1 = arg1;
    }
}