package com.cxspace.dao.impl;

import com.cxspace.dao.IUserDao;
import com.cxspace.entity.User;
import com.cxspace.utils.HibernateUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Created by cxspace on 16-7-28.
 */
public class UserDao implements IUserDao {

    @Override
    public boolean save(User user) {
        boolean flag = false;

        Session session = null;
        Transaction tx = null;

        try {

            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            session.save(user);

            tx.commit();

            flag = true;

        }catch (Exception e){

            flag = false;
            throw new RuntimeException(e);
        }finally {
            session.close();
        }

        return flag;

    }

    @Override
    public User find(String phone, String password) {

        Session session = null;
        Transaction tx = null;

        try{

            session = HibernateUtils.getSession();
            tx = session.beginTransaction();

            Query q = session.createQuery("from User where phone = ? and password = ?");


            q.setParameter(0,phone);
            q.setParameter(1,password);

            //判断是否查到为空
            if (!q.list().isEmpty()){
                return (User) q.list().get(0);
            }


        }catch (Exception e){
            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();
        }

        return null;
    }

    @Override
    public User find(String phone) {

        Session session = null;
        Transaction tx = null;

        try {

            session = HibernateUtils.getSession();
            tx = session.beginTransaction();

            Query q = session.createQuery("from User where phone = ?");

            q.setParameter(0,phone);

            //判断是否查到为空
            if (!q.list().isEmpty()){
                return (User) q.list().get(0);
            }

        }catch (Exception e){
            throw new RuntimeException(e);
        }finally {

            System.out.println("执行了");
            tx.commit();
            session.close();
        }

        return null;
    }

    @Override
    public boolean deleteUser(String id) {

        boolean flag = true;

        Session session = null;
        Transaction tx = null;

            session = HibernateUtils.getSession();
            tx = session.beginTransaction();

            try {
                session = HibernateUtils.getSession();
                tx = session.beginTransaction();

                Object obj = session.get(User.class , id);

                if (obj != null){
                    session.delete(obj);
                }


            }catch (Exception e){

            flag = false;
            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();
        }

        return flag;
    }

    @Override
    public boolean updateUserPassword(String newPassword, String userPhone) {

        boolean flag = true;

        Session session = null;

        Transaction tx = null;


        try{
            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            Query query = session.createQuery("update User user set user.password = ? where user.phone=?");

            query.setParameter(0,newPassword);

            query.setParameter(1,userPhone);

            query.executeUpdate();

        }catch (Exception e){

            flag = false;

            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();
        }

        return flag;
    }
}
