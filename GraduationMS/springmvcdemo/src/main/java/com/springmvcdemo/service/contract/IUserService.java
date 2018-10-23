package com.springmvcdemo.service.contract;

import com.springmvcdemo.domain.entity.User;

import java.util.List;

public interface IUserService {
    List<User> GetUserList();
}
