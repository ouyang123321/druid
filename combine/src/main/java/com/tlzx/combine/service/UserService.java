package com.tlzx.combine.service;

import com.tlzx.combine.model.User;


public interface UserService {

    User userLogin(String unumber, String upwd);

    User selectByPrimaryKey(Integer uid);

    int insertSelective(User record);/*添加用户*/

}
