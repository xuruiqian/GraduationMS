package com.mybatisbasicdemo.mapper;

import com.mybatisbasicdemo.domain.PermissionGroupPermission;

public interface PermissionGroupPermissionMapper {
    int deleteByPrimaryKey(String id);

    int insert(PermissionGroupPermission record);

    int insertSelective(PermissionGroupPermission record);

    PermissionGroupPermission selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(PermissionGroupPermission record);

    int updateByPrimaryKey(PermissionGroupPermission record);
}