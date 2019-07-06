package com.bilibili.cn.entity;

import java.util.Date;

public class Article {

    private Integer id;
    private String title;
    private String message;
    private String username;
    private Date createTime;
    private Integer type;
    private Integer count;
    private String image;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Article{" + "id=" + id + ", title='" + title + '\'' + ", message='" + message + '\'' + ", username='" + username + '\'' + ", createTime=" + createTime + ", type=" + type + ", count=" + count + ", image='" + image + '\'' + '}';
    }
}
