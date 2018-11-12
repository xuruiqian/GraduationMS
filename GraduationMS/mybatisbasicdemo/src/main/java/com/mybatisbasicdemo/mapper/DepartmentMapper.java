package com.mybatisbasicdemo.mapper;

import com.mybatisbasicdemo.domain.Department;
import com.mybatisbasicdemo.domain.DepartmentWithBLOBs;

public interface DepartmentMapper {
    int deleteByPrimaryKey(String id);

    int insert(DepartmentWithBLOBs record);

    int insertSelective(DepartmentWithBLOBs record);

    DepartmentWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(DepartmentWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(DepartmentWithBLOBs record);

    int updateByPrimaryKey(Department record);
}