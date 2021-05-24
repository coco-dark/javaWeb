package servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.deploy.net.HttpRequest;
import entity.Emp;
import service.EmpService;
import service.Impl.EmpServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

/**
 * @author lizhibing
 * @create 2021-05-23 17:03
 * @description
 **/
@WebServlet(urlPatterns = {"/empRequest"})
public class EmpServlet extends BaseServlet{
    EmpService service=new EmpServiceImpl();
    protected void getEmp(HttpServletRequest req, HttpServletResponse rep){
        List<Emp> list=service.getEmp();
        PrintWriter writer=null;
        try {
            ObjectMapper mapper=new ObjectMapper();
            String json=mapper.writeValueAsString(list);
           writer=rep.getWriter();
            writer. print(json);
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            writer.close();
        }

    }
    protected void updateEmp(HttpServletRequest req,HttpServletResponse rep){
        String name=req.getParameter("info[ename]");
        int age= Integer.parseInt(req.getParameter("info[eage]"));
        String sex=req.getParameter("info[esex]");
        String addr=req.getParameter("info[eaddr]");
        String dept=req.getParameter("info[dept]");
        int id= Integer.parseInt(req.getParameter("info[eid]"));
        int time= Integer.parseInt(req.getParameter("info[workTime]"));
        int sal= Integer.parseInt(req.getParameter("info[esal]"));
        Emp emp=new Emp(id,name,age,sex,addr,dept,time,sal);
        service.updateEmp(emp);

    }
}
