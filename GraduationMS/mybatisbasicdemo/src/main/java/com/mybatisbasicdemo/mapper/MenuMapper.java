package com.mybatisbasicdemo.mapper;

import com.mybatisbasicdemo.domain.Menu;
import com.mybatisbasicdemo.domain.MenuWithBLOBs;

public interface MenuMapper {
    int deleteByPrimaryKey(String id);

    int insert(MenuWithBLOBs record);

    int insertSelective(MenuWithBLOBs record);

    MenuWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MenuWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(MenuWithBLOBs record);

    int updateByPrimaryKey(Menu record);
}