package com.cxspace.control;

import com.cxspace.dao.impl.UserDao;
import com.cxspace.entity.User;
import com.cxspace.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by cxspace on 16-7-29.
 */
@WebServlet(name = "AddAdminServlet")
public class AddAdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User();
        user.setId(WebUtils.getRandomId(10));
        user.setPhone(username);
        user.setPassword(password);
        user.setType(1);
        UserDao userDao = new UserDao();


        if (userDao.save(user)){
            response.sendRedirect(request.getContextPath()+"/sys/login.jsp");
        }else {
            response.sendRedirect(request.getContextPath()+"/sys/404.jsp");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          doPost(request,response);
    }
}
