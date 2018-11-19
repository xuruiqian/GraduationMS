package com.springmvcdemo.Data.Dao.Implementation;

import com.springmvcdemo.Data.Dao.Contract.DaoContract;
import com.springmvcdemo.Data.Domain.UserWithBLOBs;
import com.springmvcdemo.Data.Mapper.UserMapper;

import java.util.List;

public class UserDao extends DaoBase implements DaoContract<UserWithBLOBs> {

    private UserMapper userMapper;

    public UserDao() {
        userMapper = sqlSession.getMapper(UserMapper.class);
    }

    @Override
    public List<UserWithBLOBs> GetAll() {
        List<UserWithBLOBs> users = userMapper.selectAll();
        return users;
    }

    @Override
    public UserWithBLOBs SelectByID(String ID) {
        UserWithBLOBs user = userMapper.selectByPrimaryKey(ID.toString());
        return user;
    }

    @Override
    public int Delete(String ID) {
        return userMapper.deleteByPrimaryKey(ID.toString());
    }

    @Override
    public int Modify(UserWithBLOBs userWithBLOBs) {
        return userMapper.updateByPrimaryKeyWithBLOBs(userWithBLOBs);
    }

    @Override
    public int Create(UserWithBLOBs userWithBLOBs) {
        return userMapper.insert(userWithBLOBs);
    }

    @Override
    public int Create(List<UserWithBLOBs> entities) {
        int rows = 0;
        for (UserWithBLOBs item : entities
                ) {
            rows += Create(item);
        }
        return rows;
    }
}