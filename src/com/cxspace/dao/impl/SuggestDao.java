package com.cxspace.dao.impl;

import com.cxspace.dao.ISuggestDao;
import com.cxspace.entity.Suggest;
import com.cxspace.utils.HibernateUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

/**
 * Created by cxspace on 16-7-28.
 */
public class SuggestDao implements ISuggestDao {

    @Override
    public boolean save(Suggest suggest) {

        boolean flag = true;

        Session session = null;
        Transaction tx = null;

        try{

            session = HibernateUtils.getSession();

            tx = session.beginTransaction();

            session.save(suggest);


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
    public List<Suggest> findAllSuggest() {


        Session session = null;
        Transaction tx = null;

        try {

            session = HibernateUtils.getSession();

            tx = session.beginTransaction();


            Query q = session.createQuery("from Suggest");

            return q.list();

        }catch (Exception e){
            throw new RuntimeException(e);

        }finally {
            tx.commit();
            session.close();
        }

    }
}
