package com.cxspace.service;

import com.cxspace.bean.PageBean;
import com.cxspace.entity.Contact;

/**
 * Created by cxspace on 16-7-28.
 */
public interface IContactService {

    //录入联系人信息
    public boolean loggingContactMessage(Contact contact);


    public void getPageData(PageBean<Contact> pb);

    public Contact findContactByPhone(String phone);

    //修改通讯电话
    public boolean changeContactPhone(String oldphone, String newphone);

    public boolean changeContactPic(String picurl, String phone);


}
