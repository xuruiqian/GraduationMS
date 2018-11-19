package com.springmvcdemo.DataRepository.Mapper;

import com.springmvcdemo.DataRepository.Domain.PermissionGroupPermission;

public interface PermissionGroupPermissionMapper {
    int deleteByPrimaryKey(String id);

    int insert(PermissionGroupPermission record);

    int insertSelective(PermissionGroupPermission record);

    PermissionGroupPermission selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(PermissionGroupPermission record);

    int updateByPrimaryKey(PermissionGroupPermission record);
}