package com.cxspace.control;

import com.cxspace.dao.impl.ContactDao;
import com.cxspace.entity.Contact;
import com.cxspace.entity.Message;
import com.cxspace.entity.User;
import com.cxspace.service.impl.ContactService;
import com.cxspace.service.impl.MessageService;
import com.cxspace.service.impl.UserService;
import com.cxspace.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;

/**
 * Created by cxspace on 16-7-29.
 */
@WebServlet(name = "AddMessageServlet")
public class AddMessageServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session= request.getSession();

        ContactService contactService = new ContactService();
        MessageService messageService = new MessageService();
        Message message = new Message();

        request.setCharacterEncoding("utf-8");
        String content = request.getParameter("content");
        String phone = (String)session.getAttribute("loginUser");
        //查到联系人拿到名字
        Contact contact = contactService.findContactByPhone(phone);
        Timestamp currentTime = WebUtils.getCurrentTime();

        message.setId(WebUtils.getRandomId(10));
        message.setWrite_time(currentTime);
        message.setName(contact.getName());
        message.setContent(content);
        message.setYuliu("未使用");

        if (messageService.addMessage(message)){
            //添加成功

            request.setAttribute("message","发表成功!");

            request.getRequestDispatcher("/PageMessageServlet").forward(request,response);

        }else {

            request.setAttribute("message","发表失败!");

            request.getRequestDispatcher("/PageMessageServlet").forward(request,response);

            //添加失败
        }

        //System.out.println(content+"-"+phone+"-"+contact.getName());


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
