package servlet;

import JDBCutils.PageUtils;
import entity.Student;
import service.Impl.StudentServiceImpl;
import service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
@MultipartConfig
@WebServlet({"/students"})
public class StudentServlet extends BaseServlet{
    int index=0;
    StudentService service=new StudentServiceImpl();
    protected void addStudent(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        try {
            //学生信息注册
            String name=request.getParameter("name");
            int age=Integer.parseInt(request.getParameter("age"));
            String sex=request.getParameter("sex");
            String email=request.getParameter("email");
            Part pr=request.getPart("photo");
            String photo= UUID.randomUUID()+pr.getSubmittedFileName();
            System.out.println(photo);
            String path="D:\\study\\JavaWeb05-2\\images";
            File file=new File(path);
            if(!file.exists()){
                file.mkdirs();
            }
            pr.write(path+"/"+photo);
            Student stu=new Student(0,name,age,sex,email,photo);
            int status=service.addStudent(stu);
            System.out.println(status);
            if(status!=0){
                request.getRequestDispatcher("welcome.jsp").forward(request,response);
            }
        }catch (Exception e){
            request.setAttribute("messages","学生信息错误！");
            request.getRequestDispatcher("addStudent.jsp").forward(request,response);

        }
    }
    protected void update(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        try {
            String sid=request.getParameter("sid");
            if(sid!=null){
                Student stu=service.getStuById(Integer.parseInt(sid));
                request.setAttribute("stu",stu);
            }else {
            int id=Integer.parseInt(request.getParameter("id"));
            String name=request.getParameter("name");
            int age=Integer.parseInt(request.getParameter("age"));
            String sex=request.getParameter("sex");
            String email=request.getParameter("email");
            String oldPic=request.getParameter("oldPhoto");
            Part pr=request.getPart("photo");
            String pic=pr.getSubmittedFileName();
            String photo= UUID.randomUUID()+pic;
            if(pic.equals("")){
                photo=oldPic;
            }

            String path="D:\\study\\JavaWeb05-2\\images";
            File file=new File(path);
            if(!file.exists()){
                file.mkdirs();
            }
            pr.write(path+"/"+photo);
            Student student=service.update(name,age,sex,email,photo,id);
            request.setAttribute("status","1");
            request.setAttribute("stu",student);
            }
            request.getRequestDispatcher("update.jsp").forward(request,response);

        } catch (Exception throwables) {
            request.setAttribute("exception",throwables);
            request.getRequestDispatcher("update.jsp").forward(request,response);
        }

    }
    protected void checkStu(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        service.checkStu();
        //添加学生如果表为空则清空此表
        request.getRequestDispatcher("addStudent.jsp").forward(request,response);
    }
    protected void select(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String page=request.getParameter("page");
        PageUtils pg=new PageUtils(page,service.countImpl());
        List<Student> list=service.select(pg);
        HttpSession session=request.getSession();
        session.setAttribute("list",list);
        request.getRequestDispatcher("select.jsp").forward(request,response);
    }
    protected void delete(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        //删除学生信息
        String[] con=request.getParameterValues("check");
        try {
            String page=request.getParameter("page");
            for(String s:con){
                System.out.println(s);
                service.delete(Integer.parseInt(s));
            }
            PageUtils pg=new PageUtils(page,service.countImpl());
            List<Student> stu=service.select(pg);
            HttpSession session=request.getSession();
            session.setAttribute("list",stu);
            request.setAttribute("pg",pg);
            request.getRequestDispatcher("select.jsp").forward(request,response);
        }catch (Exception e){
            request.setAttribute("ex",e);
            request.getRequestDispatcher("select.jsp").forward(request,response);
        }
    }
    protected void pageDown(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page=request.getParameter("page");
        PageUtils pg=new PageUtils(page,service.countImpl());
        System.out.println(page);
        List<Student>list=service.select(pg);
        request.setAttribute("pg",pg);
        HttpSession session=request.getSession();
        session.setAttribute("list",list);
        request.getRequestDispatcher("select.jsp").forward(request,response);
    }
    protected void pageUp(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String page=request.getParameter("page");
        System.out.println(page);
        PageUtils pg=new PageUtils(page,service.countImpl());
        List<Student>list=service.select(pg);
        request.setAttribute("pg",pg);
        HttpSession session=request.getSession();
        session.setAttribute("list",list);
        request.getRequestDispatcher("select.jsp").forward(request,response);
    }
    protected void jump(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies=request.getCookies();
        for(Cookie cookie:cookies){
            if (cookie.getName().equals("index")){
                    String jumpPage=cookie.getValue();
                    PageUtils pg=new PageUtils(jumpPage,service.countImpl());
                    List<Student>list=service.select(pg);
                    request.setAttribute("pg",pg);
                    HttpSession session=request.getSession();
                    session.setAttribute("list",list);
                    request.getRequestDispatcher("select.jsp").forward(request,response);
                }
            }
        }

    protected void getStuByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies=request.getCookies();
        for(Cookie cookie:cookies){
            if (cookie.getName().equals("id")){
                try {
                    int id=Integer.parseInt(cookie.getValue());
                    String page=request.getParameter("page");
                    Student stu=service.getStuById(id);
                    List<Student>list=new ArrayList<>();
                    list.add(stu);
                    PageUtils pg=new PageUtils(page,service.getCountByName(stu.getSname()));
                    request.setAttribute("pg",pg);
                    HttpSession session=request.getSession();
                    session.setAttribute("list",list);
                    request.getRequestDispatcher("select.jsp").forward(request,response);
                }catch (NumberFormatException | ServletException | IOException e){
                    request.setAttribute("ecx",e);
                    request.getRequestDispatcher("select.jsp").forward(request,response);
                }
            }
        }
    }

}