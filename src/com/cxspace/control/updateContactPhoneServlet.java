package com.cxspace.control;

import com.cxspace.entity.User;
import com.cxspace.service.impl.ContactService;
import com.cxspace.service.impl.UserService;
import com.cxspace.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by cxspace on 16-7-29.
 */
@WebServlet(name = "updateContactPhoneServlet")
public class updateContactPhoneServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        String oldPhone = (String) session.getAttribute("loginUser");

        request.setCharacterEncoding("utf-8");

        String newPhone = request.getParameter("newPhone");

        ContactService contactService = new ContactService();

        UserService userService = new UserService();

        String id = userService.findUserByPhone(oldPhone).getId();

        User user = new User();

        user.setId(WebUtils.getRandomId(10));
        user.setPhone(newPhone);
        user.setPassword(newPhone);
        user.setType(0);

        if (contactService.changeContactPhone(oldPhone,newPhone)&&userService.AddUser(user)&&userService.deleteUserById(id)){
            //修改成功
            request.setAttribute("message","修改成功,请用新的帐号密码登录！");
            request.getRequestDispatcher("/front/login.jsp").forward(request,response);

        }else {

            request.setAttribute("message","修改失败!");
            //修改失败
            request.getRequestDispatcher("/front/changePhone.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
