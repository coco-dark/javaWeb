package servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.*;

/**
 * @author lizhibing
 * @create 2021-05-20 19:23
 * @description
 **/
@WebListener
public class sessionListener implements HttpSessionAttributeListener {
    @Override
    public void attributeAdded(HttpSessionBindingEvent se) {
        System.out.println("session对象被添加了");
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent se) {
        System.out.println("session对象被移除了");
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent se) {
        System.out.println("session 对象被替换了");
    }
}
