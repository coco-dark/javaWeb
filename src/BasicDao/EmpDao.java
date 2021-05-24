package BasicDao;

import entity.Emp;

import java.util.Collection;
import java.util.List;

/**
 * @author 小屁孩
 * @create 2021-05-23 16:01
 * @desc
 **/
public interface EmpDao {
    public List<Emp> getEmp();
    public int updateEmp(Emp emp);
}
