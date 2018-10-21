package com.springmvcdemo.service.contract;

import com.springmvcdemo.entity.User;

import java.util.List;

public interface IUserService {
    List<User> GetUserList();
}
