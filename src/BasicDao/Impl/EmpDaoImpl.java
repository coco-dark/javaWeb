package BasicDao.Impl;

import BasicDao.BasicDao;
import BasicDao.EmpDao;
import entity.Emp;

import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

/**
 * @author lizhibing
 * @create 2021-05-23 16:01
 * @description
 **/
public class EmpDaoImpl extends BasicDao<Emp> implements EmpDao {
    @Override
    public List<Emp> getEmp() {
        return selectAll("SELECT * FROM emp;",Emp.class);
    }
    public int updateEmp(Emp emp){
        try {
            return update("update emp set ename=?, eage=?, esex=?, " +
                    "dept=?, eaddr=?, esal=? where eid=?",emp.getEname(),emp.getEage(),
                    emp.getEsex(),emp.getDept(),emp.getEaddr(),emp.getEsal(),emp.getEid());
        } catch (SQLException throwables) {
            throw new RuntimeException(throwables);
        }
    }
}
