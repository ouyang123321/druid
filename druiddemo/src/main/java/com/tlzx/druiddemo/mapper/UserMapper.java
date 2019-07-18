package com.tlzx.druiddemo.mapper;

import com.tlzx.druiddemo.model.User;
import org.springframework.web.bind.annotation.RestController;

//@RestController
public interface UserMapper {
    int deleteByPrimaryKey(Integer uid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uid);

    User selectByName(String name);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}