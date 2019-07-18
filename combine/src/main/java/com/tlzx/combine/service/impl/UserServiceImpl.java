package com.tlzx.combine.service.impl;

import com.tlzx.combine.mapper.UserMapper;
import com.tlzx.combine.model.User;
import com.tlzx.combine.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional  /*用该注解开启spring声明式事务*/
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User userLogin(String unumber, String upwd) {
        return userMapper.userLogin(unumber,upwd);
    }

    @Override
    public User selectByPrimaryKey(Integer uid) {
        return userMapper.selectByPrimaryKey(uid);
    }

    @Override
    public int insertSelective(User record) {
        return userMapper.insertSelective(record);
    }
}
