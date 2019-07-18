package com.tlzx.model;

import java.util.Date;

public class BasicUser {
    private Integer id;

    private String userid;

    private Integer utype;

    private String username;

    private String password;

    private String headimg;

    private String realname;

    private Integer sex;

    private Integer age;

    private String mobile;

    private String email;

    private Date credate;

    private Date upddate;

    public BasicUser(Integer id, String userid, Integer utype, String username, String password, String headimg, String realname, Integer sex, Integer age, String mobile, String email, Date credate, Date upddate) {
        this.id = id;
        this.userid = userid;
        this.utype = utype;
        this.username = username;
        this.password = password;
        this.headimg = headimg;
        this.realname = realname;
        this.sex = sex;
        this.age = age;
        this.mobile = mobile;
        this.email = email;
        this.credate = credate;
        this.upddate = upddate;
    }

    public BasicUser() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public Integer getUtype() {
        return utype;
    }

    public void setUtype(Integer utype) {
        this.utype = utype;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHeadimg() {
        return headimg;
    }

    public void setHeadimg(String headimg) {
        this.headimg = headimg;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getCredate() {
        return credate;
    }

    public void setCredate(Date credate) {
        this.credate = credate;
    }

    public Date getUpddate() {
        return upddate;
    }

    public void setUpddate(Date upddate) {
        this.upddate = upddate;
    }
}