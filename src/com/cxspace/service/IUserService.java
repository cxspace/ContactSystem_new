package com.cxspace.service;

import com.cxspace.bean.PageBean;
import com.cxspace.entity.Contact;
import com.cxspace.entity.User;

/**
 * Created by cxspace on 16-7-28.
 */
public interface IUserService {

    //一般用户登录
    public boolean userLogin(String phone, String password);

    //管理员用户登录
    public boolean  AdminLogin(String phone, String password);

    //添加用户信息
    public boolean AddUser(User user);

    public User findUserByPhone(String phone);

    public boolean deleteUserById(String id);

    public boolean updateUserPassword(String newPassword, String userPhone);

}
