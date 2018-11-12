package com.springmvcdemo.DataRepository.Mapper.Interface;

import com.springmvcdemo.DataRepository.Domain.QuickNavigation;
import com.springmvcdemo.DataRepository.Domain.QuickNavigationWithBLOBs;

public interface QuickNavigationMapper {
    int deleteByPrimaryKey(String id);

    int insert(QuickNavigationWithBLOBs record);

    int insertSelective(QuickNavigationWithBLOBs record);

    QuickNavigationWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(QuickNavigationWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(QuickNavigationWithBLOBs record);

    int updateByPrimaryKey(QuickNavigation record);
}