package servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author lizhibing
 * @create 2021-05-19 10:57
 * @description
 **/
@WebServlet("/likeServlet")
public class AjaxTest extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String msg=req.getParameter("msg");
        String msg1=req.getParameter("msg1");
        resp.getWriter().print(msg1);
        resp.getWriter().print(msg);


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext sc=getServletContext();
        Integer count=(Integer)sc.getAttribute("text");
        if(count==null){
            count=1;
        }else {
            count++;
        }
        sc.setAttribute("text",count);
        resp.getWriter().print(count);
    }
}
