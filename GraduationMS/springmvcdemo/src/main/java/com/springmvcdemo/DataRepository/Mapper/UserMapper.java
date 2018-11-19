package com.springmvcdemo.DataRepository.Mapper;

import com.springmvcdemo.DataRepository.Domain.User;
import com.springmvcdemo.DataRepository.Domain.UserWithBLOBs;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserWithBLOBs record);

    int insertSelective(UserWithBLOBs record);

    UserWithBLOBs selectByPrimaryKey(String id);

    List<UserWithBLOBs> selectAll();

    int updateByPrimaryKeySelective(UserWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(UserWithBLOBs record);

    int updateByPrimaryKey(User record);
}