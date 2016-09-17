package com.cxspace.service;

import com.cxspace.bean.PageBean;

import com.cxspace.entity.Message;

/**
 * Created by cxspace on 16-7-28.
 */
public interface IMessageService {

    public void getPageData(PageBean<Message> pb);

    public boolean addMessage(Message message);

    public boolean deleteMessage(String id);
}
