package com.mybatisbasicdemo.mapper;

import com.mybatisbasicdemo.domain.MenuPermission;

public interface MenuPermissionMapper {
    int deleteByPrimaryKey(String id);

    int insert(MenuPermission record);

    int insertSelective(MenuPermission record);

    MenuPermission selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MenuPermission record);

    int updateByPrimaryKey(MenuPermission record);
}