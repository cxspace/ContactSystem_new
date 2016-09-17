package com.cxspace.control;

import com.cxspace.bean.PageBean;
import com.cxspace.dao.impl.ContactDao;
import com.cxspace.entity.Contact;
import com.cxspace.service.impl.ContactService;

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
@WebServlet(name = "PageContactServlet")
public class PageContactServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();

        System.out.println("ok");

        if(session.getAttribute("loginUser")==null)
        {
            response.sendRedirect(request.getContextPath()+"/front/login.jsp");
        }


        try {
            ContactService contactService = new ContactService();

            String currPage = request.getParameter("currentPage");

            //初始化
            if (currPage == null ||"".equals(currPage.trim())){
                currPage="1";
            }

            int currentPage = Integer.parseInt(currPage);

            //创建pagebean,设置当前页参数
            PageBean<Contact> pageBean = new PageBean<>();

            pageBean.setCurrentPage(currentPage);

            contactService.getPageData(pageBean);

            request.setAttribute("pageBean",pageBean);


            System.out.println("成功查到分页数据");

            /*
            * 若提交的内容为“pkgcr#awldb”，地址栏的URL显示为“xxx/?q=pkgcr%23awldb”，也即参数中q的值实际上为“pkgcr#awldb”
            * */

            request.getRequestDispatcher("/front/contact.jsp").forward(request,response);


        }catch (Exception e){

            response.sendRedirect(request.getContextPath()+"/front/404.jsp");
            throw new RuntimeException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }
}
