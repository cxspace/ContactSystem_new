package com.cxspace.utils;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * Created by cxspace on 16-7-1.
 */
public class WebUtils {

    /*
         产生一个len位长度的id号

     */

    public static String getRandomId(int len) {

        StringBuffer sb = new StringBuffer();

        Random r = new Random();

        for (int i = 0; i < len; i++) {
            sb.append(r.nextInt(10));
        }
        return sb.toString();
    }


    public static Timestamp getCurrentTime(){

        Date date = new Date();

        DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        String time=format.format(date);

        Timestamp currentTime = TransTimestamp.stringToTimestamp(time);

        return currentTime;
    }

}
