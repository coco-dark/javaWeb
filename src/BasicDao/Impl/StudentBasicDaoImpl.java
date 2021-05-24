package BasicDao.Impl;


import BasicDao.BasicDao;
import JDBCutils.PageUtils;
import entity.Student;
import BasicDao.StudentDao;
import java.sql.SQLException;
import java.util.List;

/**
 * @author lizhibing
 * @create 2021-05-11 14:56
 * @description
 **/
public class StudentBasicDaoImpl extends BasicDao<Student> implements StudentDao {

   public int SInsert(Object...par) {
       try {
           return update("insert into student(sname,sage,ssex,semail,photo)values(?,?,?,?,?)",par);
       } catch (SQLException throwables) {
           throw new RuntimeException(throwables);
       }
   }
   public Student StuSelect(int id){
       return select("select * from student  where sid=?", Student.class,id);
   }
   public List<Student> StuSelectAll(){
       return selectAll("select * from student;", Student.class);
   }
   public int SDelete(int sid){
       try {
           return update("delete from student where sid=?",sid);
       } catch (SQLException throwables) {
            throw  new RuntimeException(throwables);
       }
   }
   public int SDeleteTr(){
       try {
           return update("truncate student;");
       } catch (SQLException throwables) {
          throw  new RuntimeException(throwables);
       }
   }
   public List<Student> SelectLimit(PageUtils pg){
       return selectAll("select * from student limit ?,?;", Student.class,pg.getIndex(),pg.getROW());

   }
   public int SUpdateM(Object...par) throws SQLException {
       return update("update student set sname=?,sage=?,ssex=?,semail=?,photo=? where sid=?",par);
   }

    @Override
    public int StuCount() {
       return (int)(long)selectPoly("select count(*) from student;");
    }
    public int getCountByName(String name){
       return (int)(long)selectPoly("select count(*) from student where sname like'%"+name+"%'");

    }
    public List<Student> getStuByName(PageUtils pg,String name){
       return selectAll("SELECT * FROM student WHERE sname LIKE '%"+name+"%' LIMIT ?,?;",Student.class,pg.getIndex(),pg.getROW());
    }

}
