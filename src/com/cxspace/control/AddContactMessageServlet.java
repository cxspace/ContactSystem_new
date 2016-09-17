package com.cxspace.control;

import com.cxspace.entity.Contact;
import com.cxspace.entity.User;
import com.cxspace.service.impl.ContactService;
import com.cxspace.service.impl.UserService;
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
 * Created by cxspace on 16-7-28.
 */
@WebServlet(name = "AddContactMessageServlet")
public class AddContactMessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        //产生一个10位数的Id
        String contact_id = WebUtils.getRandomId(10);

        List<String> params = FileUpload.fileUpload(request,contact_id);

        System.out.println(params);

        String name = params.get(0);

        String college = params.get(1);

        String major = params.get(2);

        String city = params.get(3);

        String phone = params.get(4);

        String pic = params.get(5);


        boolean flag = name.equals("") || college.equals("") || major.equals("") || city.equals("") || phone.equals("");



        Contact contact = new Contact();
        contact.setId(contact_id);
        contact.setName(name);
        contact.setCollege(college);
        contact.setMajor(major);
        contact.setCity(city);
        contact.setPhone(phone);
        contact.setPic(pic);
        contact.setYuliu("未使用");

        UserService userService = new UserService();
        User user = new User();

        user.setId(contact_id);
        user.setPhone(phone);
        user.setPassword(phone);
        user.setType(0);



        ContactService contactService = new ContactService();

        if (!flag)
        {
        if (contactService.loggingContactMessage(contact)){

            if (userService.AddUser(user)) {
                //录入成功
                session.setAttribute("loggingMes", "录入成功！可继续输入录入.");

                response.sendRedirect(request.getContextPath()+"/sys/contactmsg.jsp");

            }
        }else {

            session.setAttribute("loggingMes","录入失败，请重新录入!!!");
            response.sendRedirect(request.getContextPath()+"/sys/contactmsg.jsp");
            //录入失败
        }
        }else {
            session.setAttribute("loggingMes","信息输入不完整，请重新录入!!!");
            response.sendRedirect(request.getContextPath()+"/sys/contactmsg.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         doPost(request,response);
    }
}
