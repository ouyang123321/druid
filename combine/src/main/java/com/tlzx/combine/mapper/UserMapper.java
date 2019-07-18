package com.tlzx.combine.mapper;

import com.tlzx.combine.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

/**
 * @Repository将接口userMapper的一个实现类交给spring管理 （spring又开启对@Repository 注解的扫描）
 * 注：未使用该注解在service层实现类自动注入的时候会报红，但是不影响使用，使用该注解之后不会报红。
 * */
@Mapper
@Repository
//@MapperScan
public interface UserMapper {
    int deleteByPrimaryKey(Integer uid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uid);

    User userLogin(String unumber,String upwd);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}/**/