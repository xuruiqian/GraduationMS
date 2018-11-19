package com.springmvcdemo.Data.Mapper;

import com.springmvcdemo.Data.Domain.QuickNavigation;
import com.springmvcdemo.Data.Domain.QuickNavigationWithBLOBs;

public interface QuickNavigationMapper {
    int deleteByPrimaryKey(String id);

    int insert(QuickNavigationWithBLOBs record);

    int insertSelective(QuickNavigationWithBLOBs record);

    QuickNavigationWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(QuickNavigationWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(QuickNavigationWithBLOBs record);

    int updateByPrimaryKey(QuickNavigation record);
}