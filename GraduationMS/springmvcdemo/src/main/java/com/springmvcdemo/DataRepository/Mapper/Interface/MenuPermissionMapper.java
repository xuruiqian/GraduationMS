package com.springmvcdemo.DataRepository.Mapper.Interface;

import com.springmvcdemo.DataRepository.Domain.MenuPermission;

public interface MenuPermissionMapper {
    int deleteByPrimaryKey(String id);

    int insert(MenuPermission record);

    int insertSelective(MenuPermission record);

    MenuPermission selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MenuPermission record);

    int updateByPrimaryKey(MenuPermission record);
}