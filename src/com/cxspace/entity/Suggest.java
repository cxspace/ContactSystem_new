package com.cxspace.entity;

/**
 * Created by cxspace on 16-7-27.
 *
 * 建议信息表实体
 */
public class Suggest {

    private String id;

    private String name;

    private String email;

    private String content;

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Suggest(String id, String name, String email, String content) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.content = content;
    }

    @Override
    public String toString() {
        return "Suggest{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", content='" + content + '\'' +
                '}';
    }

    public Suggest(){

    }
}
