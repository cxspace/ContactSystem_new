package com.cxspace.control;

import com.cxspace.service.impl.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by cxspace on 16-7-28.
 */
@WebServlet(name = "AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();

        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        UserService userService = new UserService();
        if (userService.AdminLogin(phone,password)){
            //登录成功
            session.setAttribute("message","登录成功!");

            session.setAttribute("loginAdmin","OK");

            response.sendRedirect(request.getContextPath()+"/sys/index.jsp");

         //   request.getRequestDispatcher("/sys/index.jsp").forward(request,response);
        }else {

            session.setAttribute("message","输入有误或权限不够");

            response.sendRedirect(request.getContextPath()+"/sys/login.jsp");

           // request.getRequestDispatcher("/sys/login.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
