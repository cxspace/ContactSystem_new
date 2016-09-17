package com.cxspace.service.impl;

import com.cxspace.dao.impl.UserDao;
import com.cxspace.entity.User;
import com.cxspace.service.IUserService;

/**
 * Created by cxspace on 16-7-28.
 */
public class UserService implements IUserService{


    @Override
    public boolean userLogin(String phone, String password) {

        boolean flag = false;

        UserDao userDao = new UserDao();

        if (userDao.find(phone,password)==null){
            flag = false;

        }else {

            //拿到用户类型,判断登录权限
            if (userDao.find(phone, password).getType() == 0 || userDao.find(phone, password).getType() == 1) {
                System.out.println("查到");
                flag = true;
            }

        }
        return flag;
    }

    @Override
    public boolean AdminLogin(String phone, String password) {

        boolean flag = false;

        UserDao userDao = new UserDao();


        if(userDao.find(phone,password)==null){
            flag = false;
           }else {

            //判断是否有管理权限

            if (userDao.find(phone, password).getType() == 1) {
                flag = true;
            }else {

                flag = false;
            }
        }


        return flag;
    }

    @Override
    public boolean AddUser(User user) {

        UserDao userDao = new UserDao();
        return userDao.save(user);
    }

    @Override
    public User findUserByPhone(String phone) {

        UserDao userDao = new UserDao();
        return userDao.find(phone);
    }

    @Override
    public boolean deleteUserById(String id) {
        UserDao userDao = new UserDao();
        return userDao.deleteUser(id);
    }

    @Override
    public boolean updateUserPassword(String newPassword, String userPhone) {

        UserDao userDao = new UserDao();
        return userDao.updateUserPassword(newPassword,userPhone);
    }
}
