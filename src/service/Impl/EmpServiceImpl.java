package service.Impl;

import BasicDao.EmpDao;
import BasicDao.Impl.EmpDaoImpl;
import entity.Emp;
import service.EmpService;

import java.util.Collection;
import java.util.List;

/**
 * @author lizhibing
 * @create 2021-05-23 16:58
 * @description
 **/
public class EmpServiceImpl implements EmpService {
    EmpDao dao=new EmpDaoImpl();
    public List<Emp> getEmp(){
        return dao.getEmp();
    }

    @Override
    public int updateEmp(Emp emp) {
        return dao.updateEmp(emp);
    }
}
