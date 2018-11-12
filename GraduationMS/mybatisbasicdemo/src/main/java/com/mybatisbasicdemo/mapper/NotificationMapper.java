package com.mybatisbasicdemo.mapper;

import com.mybatisbasicdemo.domain.Notification;
import com.mybatisbasicdemo.domain.NotificationWithBLOBs;

public interface NotificationMapper {
    int deleteByPrimaryKey(String id);

    int insert(NotificationWithBLOBs record);

    int insertSelective(NotificationWithBLOBs record);

    NotificationWithBLOBs selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(NotificationWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(NotificationWithBLOBs record);

    int updateByPrimaryKey(Notification record);
}