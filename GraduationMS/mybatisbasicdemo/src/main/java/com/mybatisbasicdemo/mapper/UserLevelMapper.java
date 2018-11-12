package com.mybatisbasicdemo.mapper;

import com.mybatisbasicdemo.domain.UserLevel;

public interface UserLevelMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserLevel record);

    int insertSelective(UserLevel record);

    UserLevel selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(UserLevel record);

    int updateByPrimaryKeyWithBLOBs(UserLevel record);

    int updateByPrimaryKey(UserLevel record);
}