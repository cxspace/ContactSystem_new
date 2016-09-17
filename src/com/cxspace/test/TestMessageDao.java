package com.cxspace.test;

import com.cxspace.dao.impl.MessageDao;
import com.cxspace.entity.Message;
import com.cxspace.utils.TransTimestamp;
import com.cxspace.utils.WebUtils;
import org.junit.Test;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by cxspace on 16-7-28.
 */
public class TestMessageDao {




    @Test
    public void testaddMessage(){

        Message message = new Message();
        message.setId(WebUtils.getRandomId(10));
        message.setName("小明");
        message.setContent("最想说的话，没有说出口");

        Date date = new Date();
        DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=format.format(date);
        Timestamp write_time = TransTimestamp.stringToTimestamp(time);

        message.setWrite_time(write_time);
        message.setYuliu("预留");

        MessageDao messageDao = new MessageDao();

        messageDao.addMessage(message);



    }




    public void testfindAllMessage(){

        System.out.println(new MessageDao().findAllMessage());

    }



    public void testdeleteMessage(){

        new MessageDao().deleteMessage("9235088427");

    }

}
