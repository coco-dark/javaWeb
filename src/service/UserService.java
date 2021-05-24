package service;

import entity.User;

import java.sql.SQLException;

/**
 * @author 小屁孩
 * @create 2021-05-17 16:56
 * @desc
 **/
public interface UserService {
    public void rigist(String name,int age,String sex,String pwd,String photo) throws SQLException;
    public User login(String name, String no);
}
