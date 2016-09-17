package com.cxspace.service.impl;

import com.cxspace.bean.PageBean;
import com.cxspace.dao.impl.MessageDao;
import com.cxspace.entity.Message;
import com.cxspace.service.IMessageService;

/**
 * Created by cxspace on 16-7-28.
 */
public class MessageService implements IMessageService{

    @Override
    public void getPageData(PageBean<Message> pb) {
        MessageDao messageDao = new MessageDao();
        messageDao.getAll(pb);
    }

    @Override
    public boolean addMessage(Message message) {
        MessageDao messageDao = new MessageDao();
        return messageDao.addMessage(message);
    }

    @Override
    public boolean deleteMessage(String id) {
        MessageDao messageDao = new MessageDao();
        return messageDao.deleteMessage(id);
    }
}
