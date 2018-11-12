package com.mybatisbasicdemo.mapper;

import com.mybatisbasicdemo.domain.User;
import com.mybatisbasicdemo.domain.UserWithBLOBs;

public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserWithBLOBs record);

    int insertSelective(UserWithBLOBs record);

    UserWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(UserWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(UserWithBLOBs record);

    int updateByPrimaryKey(User record);
}