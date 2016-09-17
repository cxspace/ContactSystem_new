package com.cxspace.test;

import com.cxspace.dao.impl.UserDao;
import com.cxspace.entity.User;
import com.cxspace.service.impl.UserService;
import com.cxspace.utils.WebUtils;
import org.junit.Test;

/**
 * Created by cxspace on 16-7-28.
 */
public class TestUserDao {

    public void Testsave(){
        User user = new User();
        user.setId(WebUtils.getRandomId(10));
        user.setPhone("13037239782");
        user.setPassword("13037239782");
        user.setType(1);
        UserDao userDao = new UserDao();
        userDao.save(user);
    }



    @Test

    public void updatePassword(){

        UserDao userDao = new UserDao();
        System.out.println(userDao.updateUserPassword("2","1"));

    }




    public void testDelete(){

        UserDao userDao = new UserDao();
        userDao.deleteUser("1047395957");

    }

    public void Testfind(){

        UserDao userDao = new UserDao();

        System.out.println(userDao.find("13037239781","13037239781"));


    }
}
