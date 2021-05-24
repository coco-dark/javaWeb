package service;

import entity.Emp;

import java.util.List;

/**
 * @author lizhibing
 * @create 2021-05-23 16:58
 * @description
 **/
public interface EmpService {
    public List<Emp> getEmp();
    public int updateEmp(Emp emp);
}
