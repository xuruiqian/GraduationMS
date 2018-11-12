package com.mybatisbasicdemo.mapper;

import com.mybatisbasicdemo.domain.QuickNavigation;
import com.mybatisbasicdemo.domain.QuickNavigationWithBLOBs;

import java.util.List;

public interface QuickNavigationMapper {
    int deleteByPrimaryKey(String id);

    int insert(QuickNavigationWithBLOBs record);

    int insertSelective(QuickNavigationWithBLOBs record);

    List<QuickNavigationWithBLOBs> selectAll();

    QuickNavigationWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(QuickNavigationWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(QuickNavigationWithBLOBs record);

    int updateByPrimaryKey(QuickNavigation record);
}