package com.springmvcdemo.DataRepository.Mapper.Interface;

import com.springmvcdemo.DataRepository.Domain.Log;
import com.springmvcdemo.DataRepository.Domain.LogWithBLOBs;

public interface LogMapper {
    int deleteByPrimaryKey(String id);

    int insert(LogWithBLOBs record);

    int insertSelective(LogWithBLOBs record);

    LogWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(LogWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(LogWithBLOBs record);

    int updateByPrimaryKey(Log record);
}