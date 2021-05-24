package service;

import JDBCutils.PageUtils;
import entity.Student;

import java.sql.SQLException;
import java.util.List;

/**
 * @author lizhibing
 * @create 2021-05-17 13:28
 * @description
 **/
public interface StudentService {
    public int addStudent(Student stu);
    public void checkStu();
    public Student update(String name,int age,String sex,String email,String photo,int id) throws SQLException;
    public List<Student> select(PageUtils pg);
    public int delete(int id);
    public Student getStuById(int id);
    public int countImpl();
    public int getCountByName(String name);
    public List<Student> getStuByName(PageUtils pg,String name);

}
