package com.springmvcdemo.Service.Implementation;

import com.springmvcdemo.DataRepository.Domain.UserWithBLOBs;
import com.springmvcdemo.DataRepository.Mapper.UserMapper;
import com.springmvcdemo.Service.Contract.IUserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class UserService implements IUserService {
    public static String sqlmapconfigPath = "mybatis-config.xml"; // 定位核心配置文件
    public static InputStream inputStream = null;
    public static SqlSessionFactory sqlSessionFactory = null;
    public static SqlSession sqlSession = null;

    static {

        try {
            inputStream = Resources.getResourceAsStream(sqlmapconfigPath);
            sqlSessionFactory = new SqlSessionFactoryBuilder()
                    .build(inputStream);
            sqlSession = sqlSessionFactory.openSession();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    @Override
    public List<UserWithBLOBs> GetUsers() {
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        List<UserWithBLOBs> userList = userMapper.selectAll();
        sqlSession.close();
        return userList;
    }

    @Override
    public void CreateUser(UserWithBLOBs user) {
        try {
            UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
            userMapper.insert(user);
            sqlSession.commit();
        } catch (Exception ex) {
            System.out.println(ex.getStackTrace());
        } finally {
            sqlSession.close();
        }
    }

    @Override
    public void CreateUsers(List<UserWithBLOBs> users) {
        try {
            UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
            for (UserWithBLOBs user : users) {
                userMapper.insert(user);
            }
            sqlSession.commit();
        } catch (Exception ex) {
            System.out.println(ex.getStackTrace());
        } finally {
            sqlSession.close();
        }
    }

}