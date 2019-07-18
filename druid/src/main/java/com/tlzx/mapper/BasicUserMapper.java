package com.tlzx.mapper;

import com.tlzx.model.BasicUser;

public interface BasicUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BasicUser record);

    int insertSelective(BasicUser record);

    BasicUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BasicUser record);

    int updateByPrimaryKey(BasicUser record);
}