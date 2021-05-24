package BasicDao;

import JDBCutils.JDBCutils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * @author lizhibing
 * @create 2021-05-12 19:28
 * @description
 **/
public class BasicDao<T> {
        QueryRunner runner;
        {
            runner=new QueryRunner();
        }
        //增删改
        public  int update(String sql,Object...par) throws SQLException {
            Connection con=JDBCutils.getConnection();
            con.setAutoCommit(false);
            int e;
            try {
               e=runner.update(JDBCutils.getConnection(),sql,par);
               con.commit();
            }catch (SQLException ex){
                con.rollback();
                throw new SQLException(ex);
            } finally {
                JDBCutils.close();
            }


            return e;
        }
        public  T select(String sql, Class<T> tClass, Object... par){
            try {
                return runner.query(JDBCutils.getConnection(),sql,new BeanHandler<>(tClass),par);
            } catch (SQLException throwables) {
                throw new RuntimeException(throwables);
            }finally {
                JDBCutils.close();
            }
        }
        public List<T> selectAll(String sql,Class<T> tClass,Object...par){
            try {
                return runner.query(JDBCutils.getConnection(),sql,new BeanListHandler<>(tClass),par);
            } catch (SQLException throwables) {
                throw new RuntimeException(throwables);
            }finally {
                JDBCutils.close();
            }
        }
        public Object selectPoly(String sql,Object...par){
            try {
                return runner.query(JDBCutils.getConnection(),sql,new ScalarHandler<>(),par);
            } catch (SQLException throwables) {
                throw new RuntimeException(throwables);
            }
        }
    }

