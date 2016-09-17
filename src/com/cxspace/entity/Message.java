package com.cxspace.entity;

import java.sql.Timestamp;

/**
 * Created by cxspace on 16-7-27.
 * 留言信息表
 *
 */
public class Message {
    private String id;
    private String name;
    private Timestamp write_time;
    private String content;
    private String yuliu;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Timestamp getWrite_time() {
        return write_time;
    }

    public void setWrite_time(Timestamp write_time) {
        this.write_time = write_time;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getYuliu() {
        return yuliu;
    }

    public void setYuliu(String yuliu) {
        this.yuliu = yuliu;
    }

    public Message(String id, String name, Timestamp write_time, String content, String yuliu) {
        this.id = id;
        this.name = name;
        this.write_time = write_time;
        this.content = content;
        this.yuliu = yuliu;
    }

    @Override
    public String toString() {
        return "Message{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", write_time=" + write_time +
                ", content='" + content + '\'' +
                ", yuliu='" + yuliu + '\'' +
                '}';
    }

    public Message(){

    }
}

