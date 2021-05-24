package service.Impl;


import BasicDao.Impl.UserDaoImpl;
import BasicDao.UserDao;
import entity.User;
import service.UserService;

import java.sql.SQLException;

/**
 * @author lizhibing
 * @create 2021-05-17 16:56
 * @description
 **/
public class UserServiceImpl implements UserService {
    UserDao dao=new UserDaoImpl();
    public void rigist(String name,int age,String sex,String pwd,String photo) throws SQLException {
          dao.UserUpdate(name,age,sex,pwd,photo);
    }
    public User login(String name,String no){
        return dao.select(name,no);
    }
}
