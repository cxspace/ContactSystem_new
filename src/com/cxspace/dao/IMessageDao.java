package com.cxspace.dao;

import com.cxspace.bean.PageBean;
import com.cxspace.entity.Contact;
import com.cxspace.entity.Message;

import java.util.List;

/**
 * Created by cxspace on 16-7-28.
 */
public interface IMessageDao {

    //添加留言信息
    public boolean addMessage(Message message);

    //查询所有留言信息
    public List<Message> findAllMessage();

    //根据id号删除留言信息
    public boolean deleteMessage(String id);

    /*
 * 分页查询数据
 * */
    public void getAll(PageBean<Message> pb);

    /*
      查询总记录数
     */
    public long getTotalCount();
}
