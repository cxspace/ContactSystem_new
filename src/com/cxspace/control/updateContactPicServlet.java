package com.cxspace.control;

import com.cxspace.service.impl.ContactService;
import com.cxspace.utils.FileUpload;
import com.cxspace.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by cxspace on 16-8-1.
 */
@WebServlet(name = "updateContactPicServlet")
public class updateContactPicServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        String phone = (String) session.getAttribute("loginUser");

        List<String> list= FileUpload.fileUpload(request, WebUtils.getRandomId(10));

        String newurl = "";

        //如果返回参数列表不为空
        if (!list.isEmpty()){
            newurl = list.get(0);
        }

        ContactService contactService = new ContactService();

       // System.out.println(request.getParameter("file"));
        if (contactService.changeContactPic(newurl, phone)) {
                request.setAttribute("message","上传成功！");
                request.getRequestDispatcher("/front/changePic.jsp").forward(request,response);

            } else {
                request.getRequestDispatcher("/front/404.jsp").forward(request,response);
            }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
