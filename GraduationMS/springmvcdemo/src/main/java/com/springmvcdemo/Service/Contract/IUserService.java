package com.springmvcdemo.Service.Contract;

import com.springmvcdemo.DataRepository.Domain.UserWithBLOBs;

import java.util.List;

public interface IUserService {
    List<UserWithBLOBs> GetUserList();
}
