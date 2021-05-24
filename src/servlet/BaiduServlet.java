package servlet;

import JDBCutils.PageUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import entity.Student;
import service.Impl.StudentServiceImpl;
import service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author lizhibing
 * @create 2021-05-19 19:14
 * @description
 **/
@WebServlet("/baiduServlet")
public class BaiduServlet extends HttpServlet {
    StudentService service=new StudentServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //创建集合
        resp.setContentType("text/html;charset=utf-8;");
        String name=req.getParameter("name");
        PageUtils pageUtils=new PageUtils(null,service.getCountByName(name),service.getCountByName(name));
        System.out.println(pageUtils.getROW());
        List<Student> list=service.getStuByName(pageUtils,name);
        if(list.size()>0){
            System.out.println(list.size());
            ObjectMapper mapper=new ObjectMapper();
            String jsonList=mapper.writeValueAsString(list);
            resp.getWriter().print(jsonList);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }
}
