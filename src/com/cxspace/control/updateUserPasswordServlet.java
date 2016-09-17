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
 * Created by cxspace on 16-7-31.
 */
@WebServlet(name = "updateUserPasswordServlet")
public class updateUserPasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String phone = (String)session.getAttribute("loginUser");

        String password = request.getParameter("password");

        String verifypassword = request.getParameter("verifypassword");

        UserService userService = new UserService();

        if (!password.equals(verifypassword)){
            request.setAttribute("message","两次输入密码不一致!");
            request.getRequestDispatcher("/front/changePassword.jsp").forward(request,response);
        }else {
            //密码输入一样
            if (userService.updateUserPassword(password,phone)){
                request.setAttribute("message","修改成功请用新密码重新登录!");
                request.getRequestDispatcher("/front/login.jsp").forward(request,response);
            }else {
                request.getRequestDispatcher("/front/404.jsp").forward(request,response);
            }
        }


        //System.out.println(phone+"-"+password+"-"+verifypassword);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request,response);
    }
}
