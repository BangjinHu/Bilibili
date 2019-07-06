package com.bilibili.cn.entity;

import java.util.Date;

public class ArticleReply {

    private Integer id;
    private String message;
    private Date rtime;//回复时间
    private String image;//回帖人头像
    private Integer aid;//回复帖子id
    private String rname;//回帖人名字

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getRtime() {
        return rtime;
    }

    public void setRtime(Date rtime) {
        this.rtime = rtime;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    @Override
    public String toString() {
        return "ArticleReply{" + "id=" + id + ", message='" + message + '\'' + ", rtime=" + rtime + ", image='" + image + '\'' + ", aid=" + aid + ", rname='" + rname + '\'' + '}';
    }
}
