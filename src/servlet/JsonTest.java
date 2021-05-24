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

/**
 * @author lizhibing
 * @create 2021-05-19 14:52
 * @description
 **/
@WebServlet("/jsonServlet")
public class JsonTest extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        int id=Integer.parseInt((String) req.getAttribute("sid"));
        StudentService service=new StudentServiceImpl();
        Student student=service.getStuById(id);
        ObjectMapper mapper=new ObjectMapper();
        String json=mapper.writeValueAsString(student);
        String json1=mapper.writeValueAsString(json);
        resp.getWriter().print(json1);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
