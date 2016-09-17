package com.cxspace.dao;

import com.cxspace.bean.PageBean;
import com.cxspace.entity.Contact;
import com.cxspace.entity.User;

import java.util.List;

/**
 * Created by cxspace on 16-7-28.
 */
public interface IContactDao {

    //录入通讯信息
    public boolean loggingContactMessage(Contact contact);


    //修改通讯电话
    public boolean updateContactMessage(String oldphone, String newphone);

    public boolean updateContactPic(String url, String phone);
    //展示所有联系人信息
    public List<Contact> findAllContact();

    /*
    * 分页查询数据
    * */
    public void getAll(PageBean<Contact> pb);

    /*
      查询总记录数
     */
    public long getTotalCount();

    public Contact find(String phone);

}
