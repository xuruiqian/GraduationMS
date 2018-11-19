package com.springmvcdemo.Data.Mapper;

import com.springmvcdemo.Data.Domain.User;
import com.springmvcdemo.Data.Domain.UserWithBLOBs;

import javax.annotation.Resource;
import java.util.List;
@Resource
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