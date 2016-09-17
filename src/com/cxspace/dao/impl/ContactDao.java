package com.cxspace.dao.impl;

import com.cxspace.bean.PageBean;
import com.cxspace.dao.IContactDao;
import com.cxspace.entity.Contact;
import com.cxspace.entity.User;
import com.cxspace.utils.HibernateUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

/**
 * Created by cxspace on 16-7-28.
 */
public class ContactDao implements IContactDao{

    //录入联系人信息
    @Override
    public boolean loggingContactMessage(Contact contact) {

        boolean flag = true;

        Session session= null;
        Transaction tx = null;

        try {

            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            session.save(contact);

            tx.commit();

        }catch (Exception e){

            flag = false;
            throw new RuntimeException(e);
        }finally {

            session.close();
        }

        return flag;
    }

    @Override
    public boolean updateContactMessage(String oldphone , String newphone) {

        boolean flag = true;

        Session session = null;
        Transaction tx = null;

        try{
            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            Query query = session.createQuery("update Contact contact set contact.phone = ? where contact.phone=?");

            query.setParameter(0,newphone);

            query.setParameter(1,oldphone);

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

    @Override
    public boolean updateContactPic(String url, String phone) {

        boolean flag = true;

        Session session = null;
        Transaction tx = null;

        try{
            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            Query query = session.createQuery("update Contact contact set contact.pic = ? where contact.phone=?");

            query.setParameter(0,url);

            query.setParameter(1,phone);

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


    @Override
    public List<Contact> findAllContact() {

        Session session = null;
        Transaction tx = null;

        try{
            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            Query q = session.createQuery("from Contact order by name asc ");

            return q.list();
        }catch (Exception e){
            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();
        }


    }

    @Override
    public void getAll(PageBean<Contact> pb) {

        Session session = null;
        Transaction tx = null;

        //拿到总记录数
        int totalCount = (int) this.getTotalCount();

        pb.setTotalCount(totalCount);

        if (pb.getCurrentPage()<=1){
            pb.setCurrentPage(1);
        }else if(pb.getCurrentPage()  >= pb.getTotalPage()){
            pb.setCurrentPage(pb.getTotalPage());
        }

        int crrentPage = pb.getCurrentPage();

        int index = (crrentPage - 1)*pb.getPageCount();

        int count = pb.getPageCount();

        try {
            session = HibernateUtils.getSession();
            tx = session.beginTransaction();

            Query q = session.createQuery("from Contact order by name desc ");

            q.setFirstResult(index);

            q.setMaxResults(count);

            List<Contact> contacts = q.list();

            pb.setPageData(contacts);

        }catch (Exception e){
            throw new RuntimeException(e);
        } finally {
            tx.commit();
            session.close();
        }
    }

    @Override
    public long getTotalCount() {

        Session session = null;
        Transaction tx = null;

        long count;

        try{
            session = HibernateUtils.getSession();
            tx = session.beginTransaction();
            count = (long) session.createQuery("select count(*) from Contact contact").uniqueResult();

        }catch (Exception e){

            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();
        }


        return count;
    }

    @Override
    public Contact find(String phone) {

        Session session = null;
        Transaction tx = null;

        try {

            session = HibernateUtils.getSession();
            tx = session.beginTransaction();

            Query q = session.createQuery("from Contact where phone = ?");

            q.setParameter(0,phone);

            //判断是否查到为空
            if (!q.list().isEmpty()){
                return (Contact) q.list().get(0);
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


}
