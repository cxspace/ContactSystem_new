package com.cxspace.entity;

/**
 * Created by cxspace on 16-7-27.
 *
 * 用户表实体
 */
public class User {

    private String id;

    private String phone;

    private String password;

    //0 普通用户  1管理员用户
    private int type;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                ", type=" + type +
                '}';
    }

    public User(String id, String phone, String password, int type) {
        this.id = id;
        this.phone = phone;
        this.password = password;
        this.type = type;
    }

    public User(){

    }
}
