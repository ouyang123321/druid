package com.tlzx.druiddemo.server.impl;

import com.tlzx.druiddemo.mapper.UserMapper;
import com.tlzx.druiddemo.model.User;
import com.tlzx.druiddemo.server.UserServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class UserServerImpl implements UserServer {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User selectByName(String uname) {
        return userMapper.selectByName(uname);
    }

    @Override
    public User selectByPrimaryKey(Integer uid) {
        return userMapper.selectByPrimaryKey(uid);
    }
}
