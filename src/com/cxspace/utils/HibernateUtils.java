package com.cxspace.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Created by cxspace on 16-7-19.
 */
public class HibernateUtils {


    private static SessionFactory sf;

    static {
        //加载主配置文件，并创建session对象
        sf = new Configuration()
                .configure()
                .buildSessionFactory();
    }

    public static Session getSession(){
        return sf.openSession();
    }

}
