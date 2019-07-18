package com.tlzx.combine.mapper;

import com.tlzx.combine.model.UserGroup;

public interface UserGroupMapper {
    int deleteByPrimaryKey(Integer ugid);

    int insert(UserGroup record);

    int insertSelective(UserGroup record);

    UserGroup selectByPrimaryKey(Integer ugid);

    int updateByPrimaryKeySelective(UserGroup record);

    int updateByPrimaryKey(UserGroup record);
}