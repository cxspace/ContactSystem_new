package com.cxspace.service.impl;

import com.cxspace.bean.PageBean;
import com.cxspace.dao.impl.ContactDao;
import com.cxspace.entity.Contact;
import com.cxspace.service.IContactService;

/**
 * Created by cxspace on 16-7-28.
 */
public class ContactService implements IContactService{


    @Override
    public boolean loggingContactMessage(Contact contact) {

        ContactDao contactDao = new ContactDao();

        return contactDao.loggingContactMessage(contact);

    }



    @Override
    public void getPageData(PageBean<Contact> pb) {
        ContactDao contactDao = new ContactDao();
        contactDao.getAll(pb);
    }

    @Override
    public Contact findContactByPhone(String phone) {
        ContactDao contactDao = new ContactDao();
        return contactDao.find(phone);
    }

    @Override
    public boolean changeContactPhone(String oldphone, String newphone) {

        ContactDao contactDao = new ContactDao();
        return contactDao.updateContactMessage(oldphone,newphone);
    }

    @Override
    public boolean changeContactPic(String picurl, String phone) {
        ContactDao contactDao = new ContactDao();
        return contactDao.updateContactPic(picurl, phone);
    }
}
