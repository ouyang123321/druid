package com.tlzx.druiddemo.server;

import com.tlzx.druiddemo.model.User;

public interface UserServer {
    User selectByPrimaryKey(Integer uid);
    User selectByName(String name);
}
