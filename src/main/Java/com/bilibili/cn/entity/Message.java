package com.bilibili.cn.entity;

import java.util.Date;

public class Message {

    private Integer id;
    private Integer vedioId;
    private String username;
    private String message;//留言内容
    private Date messageTime;//留言时间
    private String userImage;//用户头像

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getVedioId() {
        return vedioId;
    }

    public void setVedioId(Integer vedioId) {
        this.vedioId = vedioId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getMessageTime() {
        return messageTime;
    }

    public void setMessageTime(Date messageTime) {
        this.messageTime = messageTime;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    @Override
    public String toString() {
        return "Message{" + "id=" + id + ", vedioId=" + vedioId + ", username='" + username + '\'' + ", message='" + message + '\'' + ", messageTime=" + messageTime + ", userImage='" + userImage + '\'' + '}';
    }
}
