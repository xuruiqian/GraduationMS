package com.springmvcdemo.Service.Implementation;

import com.springmvcdemo.Data.Dao.Implementation.UserDao;
import com.springmvcdemo.Data.Domain.UserWithBLOBs;
import com.springmvcdemo.Service.Contract.IUserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserService implements IUserService {

    @Resource
    UserDao userDao = new UserDao();

    @Override
    public List<UserWithBLOBs> GetUsers() {
        List<UserWithBLOBs> userList = userDao.GetAll();
        return userList;
    }

    @Override
    public void CreateUser(UserWithBLOBs user) {
        try {
            userDao.Create(user);
        } catch (Exception ex) {
            System.out.println(ex.getStackTrace());
        }
    }

    @Transactional
    public void CreateUsers(List<UserWithBLOBs> users) {
        try {
            userDao.Create(users);
        } catch (Exception ex) {
            System.out.println(ex.getStackTrace());
        }
    }

    public int delete(String id) {
        return userDao.Delete(id);
    }

    public int delete(String[] ids) {
        int rows = 0;
        for (String id : ids) {
            rows += delete(id);
        }
        return rows;
    }

    public int update(UserWithBLOBs entity) {
        return userDao.Modify(entity);
    }
}