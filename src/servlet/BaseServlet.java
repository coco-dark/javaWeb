package servlet;

import JDBCutils.PageUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;

/**
 * @author lizhibing
 * @create 2021-05-17 14:19
 * @description
 **/
public class BaseServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String flag = request.getParameter("msg");
        System.out.println(request.getParameter("name"));
        //获取当前类的字节码对象
        System.out.println(flag);
        Class c = this.getClass();
        try {
            //根据flag的值找到对应的方法
            Method m = c.getDeclaredMethod(flag, HttpServletRequest.class, HttpServletResponse.class);
            //打破修饰符的限制
            m.setAccessible(true);
            //执行该方法
            m.invoke(this, request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
