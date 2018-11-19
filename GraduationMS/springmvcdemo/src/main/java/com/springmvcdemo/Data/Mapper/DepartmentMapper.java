package com.springmvcdemo.Data.Mapper;

import com.springmvcdemo.Data.Domain.Department;
import com.springmvcdemo.Data.Domain.DepartmentWithBLOBs;

public interface DepartmentMapper {
    int deleteByPrimaryKey(String id);

    int insert(DepartmentWithBLOBs record);

    int insertSelective(DepartmentWithBLOBs record);

    DepartmentWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(DepartmentWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(DepartmentWithBLOBs record);

    int updateByPrimaryKey(Department record);
}