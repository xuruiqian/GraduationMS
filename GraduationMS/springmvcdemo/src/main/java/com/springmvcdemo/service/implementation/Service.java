package com.springmvcdemo.service.implementation;

import com.springmvcdemo.entity.User;
import com.springmvcdemo.service.contract.IService;

import java.util.ArrayList;
import java.util.List;

public class Service implements IService {
    @Override
    public List<User> GetUserList() {
        List<User> userList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            User user = new User();
            user.setUsername("User-" + i);
            user.setLoginname("LoginName-" + i);
            user.setPassword("Password-" + i);

            userList.add(user);
        }
        return userList;
    }
}