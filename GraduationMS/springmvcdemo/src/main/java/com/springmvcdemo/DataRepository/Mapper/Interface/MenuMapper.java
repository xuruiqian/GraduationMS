package com.springmvcdemo.DataRepository.Mapper.Interface;

import com.springmvcdemo.DataRepository.Domain.Menu;
import com.springmvcdemo.DataRepository.Domain.MenuWithBLOBs;

public interface MenuMapper {
    int deleteByPrimaryKey(String id);

    int insert(MenuWithBLOBs record);

    int insertSelective(MenuWithBLOBs record);

    MenuWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(MenuWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(MenuWithBLOBs record);

    int updateByPrimaryKey(Menu record);
}