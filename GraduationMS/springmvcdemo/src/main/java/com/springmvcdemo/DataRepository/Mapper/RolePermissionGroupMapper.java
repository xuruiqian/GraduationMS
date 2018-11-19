package com.springmvcdemo.DataRepository.Mapper;

import com.springmvcdemo.DataRepository.Domain.RolePermissionGroup;

public interface RolePermissionGroupMapper {
    int deleteByPrimaryKey(String id);

    int insert(RolePermissionGroup record);

    int insertSelective(RolePermissionGroup record);

    RolePermissionGroup selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(RolePermissionGroup record);

    int updateByPrimaryKey(RolePermissionGroup record);
}