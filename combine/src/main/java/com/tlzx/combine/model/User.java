package com.tlzx.combine.model;

import lombok.ToString;

import java.util.Date;

@ToString
public class User {
    private Integer uid;

    private Integer ugid;

    private String unumber;

    private String uname;

    private String upwd;

    private String upost;

    private String utel;

    private String umail;

    private Date userSetTime;

    public User(Integer uid, Integer ugid, String unumber, String uname, String upwd, String upost, String utel, String umail, Date userSetTime) {
        this.uid = uid;
        this.ugid = ugid;
        this.unumber = unumber;
        this.uname = uname;
        this.upwd = upwd;
        this.upost = upost;
        this.utel = utel;
        this.umail = umail;
        this.userSetTime = userSetTime;
    }

    public User() {
        super();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getUgid() {
        return ugid;
    }

    public void setUgid(Integer ugid) {
        this.ugid = ugid;
    }

    public String getUnumber() {
        return unumber;
    }

    public void setUnumber(String unumber) {
        this.unumber = unumber;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public String getUpost() {
        return upost;
    }

    public void setUpost(String upost) {
        this.upost = upost;
    }

    public String getUtel() {
        return utel;
    }

    public void setUtel(String utel) {
        this.utel = utel;
    }

    public String getUmail() {
        return umail;
    }

    public void setUmail(String umail) {
        this.umail = umail;
    }

    public Date getUserSetTime() {
        return userSetTime;
    }

    public void setUserSetTime(Date userSetTime) {
        this.userSetTime = userSetTime;
    }
}