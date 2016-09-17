package com.cxspace.control;

import com.cxspace.entity.Suggest;
import com.cxspace.service.impl.SuggestService;
import com.cxspace.utils.WebUtils;
import sun.java2d.SunGraphicsEnvironment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by cxspace on 16-7-29.
 */

public class AddSuggestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");


        String name = request.getParameter("name");

        String email = request.getParameter("email");

        String content = request.getParameter("content");

        Suggest suggest = new Suggest();

        suggest.setId(WebUtils.getRandomId(10));
        suggest.setName(name);
        suggest.setContent(content);
        suggest.setEmail(email);

        SuggestService suggestService = new SuggestService();

        if (suggestService.save(suggest)&&name!=null&&!name.equals("")&&email!=null&&!email.equals("")){

            request.setAttribute("suggestMessage","发送建议成功!");
            request.getRequestDispatcher("/front/sendSuggest.jsp").forward(request,response);
        }else {

            request.setAttribute("suggestMessage","发送建议失败!");
             request.getRequestDispatcher("/front/sendSuggest.jsp").forward(request,response);
            //发送失败
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         doPost(request,response);
    }
}
