package com.springmvcdemo.DataRepository.Mapper.Interface;

import com.springmvcdemo.DataRepository.Domain.User;
import com.springmvcdemo.DataRepository.Domain.UserWithBLOBs;

public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserWithBLOBs record);

    int insertSelective(UserWithBLOBs record);

    UserWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(UserWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(UserWithBLOBs record);

    int updateByPrimaryKey(User record);
}