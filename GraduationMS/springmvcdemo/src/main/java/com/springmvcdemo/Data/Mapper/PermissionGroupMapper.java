package com.springmvcdemo.Data.Mapper;

import com.springmvcdemo.Data.Domain.PermissionGroup;

public interface PermissionGroupMapper {
    int deleteByPrimaryKey(String id);

    int insert(PermissionGroup record);

    int insertSelective(PermissionGroup record);

    PermissionGroup selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(PermissionGroup record);

    int updateByPrimaryKeyWithBLOBs(PermissionGroup record);

    int updateByPrimaryKey(PermissionGroup record);
}