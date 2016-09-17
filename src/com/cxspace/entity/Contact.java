package com.cxspace.entity;

/**
 * Created by cxspace on 16-7-27.
 *
 * 联系人信息表实体
 */
public class Contact {

    private String id;

    private String name;

    private String college;

    private String major;

    private String city;

    private String phone;

    private double  pointx;

    private double pointy;

    private String pic;

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

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public double getPointx() {
        return pointx;
    }

    public void setPointx(double pointx) {
        this.pointx = pointx;
    }

    public double getPointy() {
        return pointy;
    }

    public void setPointy(double pointy) {
        this.pointy = pointy;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getYuliu() {
        return yuliu;
    }

    public void setYuliu(String yuliu) {
        this.yuliu = yuliu;
    }

    @Override
    public String toString() {
        return "Contact{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", college='" + college + '\'' +
                ", major='" + major + '\'' +
                ", city='" + city + '\'' +
                ", phone='" + phone + '\'' +
                ", pointx=" + pointx +
                ", pointy=" + pointy +
                ", pic='" + pic + '\'' +
                ", yuliu='" + yuliu + '\'' +
                '}';
    }

    public Contact(String id, String name, String college, String major, String city, String phone, double pointx, double pointy, String pic, String yuliu) {
        this.id = id;
        this.name = name;
        this.college = college;
        this.major = major;
        this.city = city;
        this.phone = phone;
        this.pointx = pointx;
        this.pointy = pointy;
        this.pic = pic;
        this.yuliu = yuliu;
    }

    public Contact(){

    }
}
