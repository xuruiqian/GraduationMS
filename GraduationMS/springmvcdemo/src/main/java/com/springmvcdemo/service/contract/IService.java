package com.springmvcdemo.service.contract;

import com.springmvcdemo.entity.User;

import java.util.List;

public interface IService {
    List<User> GetUserList();
}
