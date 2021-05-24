package BasicDao;

import JDBCutils.PageUtils;
import entity.Student;

import java.sql.SQLException;
import java.util.List;

/**
 * @author 小屁孩
 * @create 2021-05-17 9:38
 * @desc
 **/
public interface StudentDao {
    int SInsert(Object... par);
    Student StuSelect(int id);
    public List<Student> StuSelectAll();
    public int SDelete(int sid);
    public int SDeleteTr();
    public List<Student> SelectLimit(PageUtils pg);
    public int SUpdateM(Object...par) throws SQLException;
    public int StuCount();
    public int getCountByName(String name);
    public List<Student> getStuByName(PageUtils pg,String name);

}
