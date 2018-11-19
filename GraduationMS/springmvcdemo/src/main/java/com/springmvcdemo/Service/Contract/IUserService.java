package com.springmvcdemo.Service.Contract;

import com.springmvcdemo.Data.Domain.UserWithBLOBs;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface IUserService {
    List<UserWithBLOBs> GetUsers();

    void CreateUser(UserWithBLOBs user);

    void CreateUsers(List<UserWithBLOBs> users);
}
