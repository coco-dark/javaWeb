package JDBCutils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * @author lizhibing
 * @create 2021-05-11 14:41
 * @description 封装数据库操作
 **/
public class JDBCutils {
    static ThreadLocal<Connection> tl=new ThreadLocal<>();
    static ComboPooledDataSource source;
    static {
        source=new ComboPooledDataSource();
        try {
            Connection con=source.getConnection();
            tl.set(con);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    //获取方法
    public static Connection getConnection() {
        Connection connection=tl.get();
        if(connection==null){
            try {
                connection=source.getConnection();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            tl.set(connection);
        }
        return connection;
    }
    //释放资源
    public static void close(){
        Connection con=tl.get();
        if(con!=null){
            try {
                tl.remove();
                con.close();

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

        }
    }
}
