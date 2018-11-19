package com.springmvcdemo.Data.Mapper;

import com.springmvcdemo.Data.Domain.Notification;
import com.springmvcdemo.Data.Domain.NotificationWithBLOBs;

public interface NotificationMapper {
    int deleteByPrimaryKey(String id);

    int insert(NotificationWithBLOBs record);

    int insertSelective(NotificationWithBLOBs record);

    NotificationWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(NotificationWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(NotificationWithBLOBs record);

    int updateByPrimaryKey(Notification record);
}