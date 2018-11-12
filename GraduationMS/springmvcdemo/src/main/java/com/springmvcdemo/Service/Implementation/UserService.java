package com.springmvcdemo.Service.Implementation;

import com.springmvcdemo.DataRepository.Domain.UserWithBLOBs;
import com.springmvcdemo.Service.Contract.IUserService;

import java.util.ArrayList;
import java.util.List;

public class UserService implements IUserService {
    @Override
    public List<UserWithBLOBs> GetUserList() {
        List<UserWithBLOBs> userList = new ArrayList<UserWithBLOBs>();
        for (int i = 0; i < 10; i++) {
            UserWithBLOBs user = new UserWithBLOBs();
            user.setName("User-" + i);
            user.setPassword("Password-" + i);

            userList.add(user);
        }
        return userList;
    }
}