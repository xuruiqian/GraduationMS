package com.mybatisbasicdemo.mapper;

import com.mybatisbasicdemo.domain.Log;
import com.mybatisbasicdemo.domain.LogWithBLOBs;

public interface LogMapper {
    int deleteByPrimaryKey(String id);

    int insert(LogWithBLOBs record);

    int insertSelective(LogWithBLOBs record);

    LogWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(LogWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(LogWithBLOBs record);

    int updateByPrimaryKey(Log record);
}