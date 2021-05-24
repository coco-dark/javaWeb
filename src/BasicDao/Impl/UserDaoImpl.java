package BasicDao.Impl;

import BasicDao.BasicDao;
import entity.User;
import BasicDao.UserDao;
import java.sql.SQLException;

/**
 * @author lizhibing
 * @create 2021-05-12 20:25
 * @description
 **/
public class UserDaoImpl extends BasicDao<User> implements UserDao {
    public int UserUpdate(Object...par) throws SQLException {
        return update("insert into user(name,age,sex,pwd,headPhoto) values(?,?,?,?,?)",par);
    }
    public User select(String name,String pwd){
        return  select("select * from user where name=? and pwd=?",User.class,name,pwd);
    }
}
