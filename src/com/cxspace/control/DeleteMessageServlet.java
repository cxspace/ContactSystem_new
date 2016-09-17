package com.cxspace.control;

import com.cxspace.service.impl.MessageService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by cxspace on 16-7-29.
 */
@WebServlet(name = "DeleteMessageServlet")
public class DeleteMessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String messageId = request.getParameter("messageId");
        MessageService messageService = new MessageService();

        if (messageService.deleteMessage(messageId)){

            response.sendRedirect(request.getContextPath()+"/sys/message.jsp");
        }else {

            response.sendRedirect(request.getContextPath()+"/sys/404.jsp");
            //处理错误页面
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request,response);
    }
}
