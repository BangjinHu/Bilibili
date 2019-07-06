package com.bilibili.cn.entity;

import java.util.Date;

public class User {

    private Integer userId;
    private String userRealName;
    private String userName;
    private String password;

    private String userBankCard;
    private String userSex;
    private String userHandImg;//用户头像
    private String userAddr;//用户地址
    private String userPhone;//用户电话
    private String userQQ;//用户QQ
    private String userEmail;//用户邮箱
    private String userCollection;//用户收藏
    private Integer userState;//用户状态

    private Date userLogin;//用户上次登录时间
    private String userIp;//用户登录ip
    private String userPass;//用户支付密码
    private Integer userRmb;//用户账户余额

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserRealName() {
        return userRealName;
    }

    public void setUserRealName(String userRealName) {
        this.userRealName = userRealName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserBankCard() {
        return userBankCard;
    }

    public void setUserBankCard(String userBankCard) {
        this.userBankCard = userBankCard;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public String getUserHandImg() {
        return userHandImg;
    }

    public void setUserHandImg(String userHandImg) {
        this.userHandImg = userHandImg;
    }

    public String getUserAddr() {
        return userAddr;
    }

    public void setUserAddr(String userAddr) {
        this.userAddr = userAddr;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserQQ() {
        return userQQ;
    }

    public void setUserQQ(String userQQ) {
        this.userQQ = userQQ;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserCollection() {
        return userCollection;
    }

    public void setUserCollection(String userCollection) {
        this.userCollection = userCollection;
    }

    public Integer getUserState() {
        return userState;
    }

    public void setUserState(Integer userState) {
        this.userState = userState;
    }

    public Date getUserLogin() {
        return userLogin;
    }

    public void setUserLogin(Date userLogin) {
        this.userLogin = userLogin;
    }

    public String getUserIp() {
        return userIp;
    }

    public void setUserIp(String userIp) {
        this.userIp = userIp;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public Integer getUserRmb() {
        return userRmb;
    }

    public void setUserRmb(Integer userRmb) {
        this.userRmb = userRmb;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userRealName='" + userRealName + '\'' + ", userName='" + userName + '\'' + ", password='" + password + '\'' + ", userBankCard='" + userBankCard + '\'' + ", userSex='" + userSex + '\'' + ", userHandImg='" + userHandImg + '\'' + ", userAddr='" + userAddr + '\'' + ", userPhone='" + userPhone + '\'' + ", userQQ='" + userQQ + '\'' + ", userEmail='" + userEmail + '\'' + ", userCollection='" + userCollection + '\'' + ", userState=" + userState + ", userLogin=" + userLogin + ", userIp='" + userIp + '\'' + ", userPass='" + userPass + '\'' + ", userRmb=" + userRmb + '}';
    }
}
