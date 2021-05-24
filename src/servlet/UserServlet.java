package servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import entity.User;
import service.Impl.UserServiceImpl;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;

@MultipartConfig
@WebServlet(name = "UserServlet",urlPatterns="/regist")
public class UserServlet extends BaseServlet{
    UserService service=new UserServiceImpl();
    protected void rigist(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        try {
            String name=request.getParameter("name");
            int age=Integer.parseInt(request.getParameter("age"));
            String sex=request.getParameter("sex");
            String pwd=request.getParameter("pwd");
            Part part=request.getPart("photo");
            String pic= UUID.randomUUID() +part.getSubmittedFileName();
            String path="D:\\study\\JavaWeb05-2\\images";
            File file=new File(path);
            if(!file.exists()){
                file.mkdirs();
            }
            part.write(path+"/"+pic);
            service.rigist(name,age,sex,pwd,pic);
            HttpSession session=request.getSession();
            session.setMaxInactiveInterval(60*30);
            session.setAttribute("pic",pic);
            request.getRequestDispatcher("index.jsp").forward(request,response);
        } catch (NumberFormatException e){
            request.setAttribute("messages",e);
            request.getRequestDispatcher("rigist.jsp").forward(request,response);
        } catch (SQLException throwables) {
            request.setAttribute("ecp",throwables);
            request.getRequestDispatcher("rigist.jsp").forward(request,response);
        }
    }
    protected void login(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        String no=request.getParameter("pwd");
        User user=service.login(name,no);
        ObjectMapper mapper=new ObjectMapper();
        if(user==null){
            String json=mapper.writeValueAsString(false);
            response.getWriter().print(json);
        }else {
            Cookie cookie=new Cookie("user",user.getName());
            Cookie cookie1=new Cookie("img",user.getHeadPhoto());
            cookie1.setMaxAge(60*30);
            response.addCookie(cookie);
            response.addCookie(cookie1);
            String json=mapper.writeValueAsString(user);
            response.getWriter().print(json);
        }
    }
    //上传文件的方法

}
