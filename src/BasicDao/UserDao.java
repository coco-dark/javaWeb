package BasicDao;

import entity.User;

import java.sql.SQLException;

/**
 * @author lizhibing
 * @create 2021-05-17 19:38
 * @description
 **/
public interface UserDao {
    public int UserUpdate(Object...par) throws SQLException;
    public User select(String name, String pwd);
}
