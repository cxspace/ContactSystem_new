package com.cxspace.dao.impl;

import com.cxspace.bean.PageBean;
import com.cxspace.dao.IMessageDao;
import com.cxspace.entity.Contact;
import com.cxspace.entity.Message;
import com.cxspace.utils.HibernateUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

/**
 * Created by cxspace on 16-7-28.
 */
public class MessageDao implements IMessageDao {

    @Override
    public boolean addMessage(Message message) {

        boolean flag = true;

        Session session = null;
        Transaction tx = null;

        try{

            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            session.save(message);

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
    public List<Message> findAllMessage() {

        Session session = null;
        Transaction tx = null;

        try{

            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            Query q = session.createQuery("from Message order by write_time desc ");

            return q.list();

        }catch (Exception e){

            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();

        }

    }

    @Override
    public boolean deleteMessage(String id) {

        boolean flag = true;

        Session session = null;
        Transaction tx = null;

        try {
            session = HibernateUtils.getSession();
            tx = session.beginTransaction();

            Object obj = session.get(Message.class , id);

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
    public void getAll(PageBean<Message> pb) {

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

            Query q = session.createQuery("from Message order by write_time desc ");

            q.setFirstResult(index);

            q.setMaxResults(count);

            List<Message> messages = q.list();

            pb.setPageData(messages);

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
            count = (long) session.createQuery("select count(*) from Message message").uniqueResult();

        }catch (Exception e){

            throw new RuntimeException(e);
        }finally {

            tx.commit();
            session.close();
        }

        return count;
    }

}
