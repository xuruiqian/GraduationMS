package com.gt.springmvc.service.impl;

import com.gt.springmvc.dao.IUserDao;
import com.gt.springmvc.pojo.User;
import com.gt.springmvc.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements IUserService {
    @Resource
    private IUserDao userDao;
//    @Override
//    public User getUserById(int userId) {
//        // TODO Auto-generated method stub
//        return this.userDao.selectByPrimaryKey(userId);
//    }

}