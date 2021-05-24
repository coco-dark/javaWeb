package service.Impl;

import BasicDao.StudentDao;
import BasicDao.Impl.StudentBasicDaoImpl;
import JDBCutils.PageUtils;
import entity.Student;
import service.StudentService;

import java.sql.SQLException;
import java.util.List;

/**
 * @author lizhibing
 * @create 2021-05-17 13:30
 * @description
 **/
public class StudentServiceImpl implements StudentService {
    StudentDao dao =new StudentBasicDaoImpl();
    @Override
    public int addStudent(Student stu) {
        int status = dao.SInsert(stu.getSname(),stu.getSage(),stu.getSsex(),stu.getSemail(),stu.getPhoto());
        return status;
    }
    public void checkStu(){
        List<Student> list=dao.StuSelectAll();
        if(list.size()==0){
            dao.SDeleteTr();
        }
    }
    public Student update(String name,int age,String sex,String email,String photo,int id) throws SQLException {
        dao.SUpdateM(name,age,sex,email,photo,id);
        return dao.StuSelect(id);
    }
    public List<Student> select(PageUtils pg){
        return dao.SelectLimit(pg);
    }
    public int delete(int id){
        return dao.SDelete(id);

    }
    public int countImpl(){
        return dao.StuCount();
    }
    public Student getStuById(int id){
        return dao.StuSelect(id);
    }
    public int getCountByName(String name){
        return dao.getCountByName(name);
    }
    public List<Student> getStuByName(PageUtils pg,String name){
        return dao.getStuByName(pg,name);
    }
}
