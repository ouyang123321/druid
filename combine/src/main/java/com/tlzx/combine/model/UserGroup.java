package com.tlzx.combine.model;

import java.util.Date;

public class UserGroup {
    private Integer ugid;

    private String ugname;

    private Date groupSetTime;

    public UserGroup(Integer ugid, String ugname, Date groupSetTime) {
        this.ugid = ugid;
        this.ugname = ugname;
        this.groupSetTime = groupSetTime;
    }

    public UserGroup() {
        super();
    }

    public Integer getUgid() {
        return ugid;
    }

    public void setUgid(Integer ugid) {
        this.ugid = ugid;
    }

    public String getUgname() {
        return ugname;
    }

    public void setUgname(String ugname) {
        this.ugname = ugname;
    }

    public Date getGroupSetTime() {
        return groupSetTime;
    }

    public void setGroupSetTime(Date groupSetTime) {
        this.groupSetTime = groupSetTime;
    }
}