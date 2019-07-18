package com.tlzx.combine.mapper;

import com.tlzx.combine.model.RequestData;

public interface RequestDataMapper {
    int insert(RequestData record);

    int insertSelective(RequestData record);
}