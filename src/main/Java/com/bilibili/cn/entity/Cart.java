package com.bilibili.cn.entity;

public class Cart {

    private Integer cartId;
    private String username;//购物人姓名
    private Integer sid;//商品id
    private String sname;//商品名称
    private String simage;//商品图片
    private Integer sprice;//商品价格

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSimage() {
        return simage;
    }

    public void setSimage(String simage) {
        this.simage = simage;
    }

    public Integer getSprice() {
        return sprice;
    }

    public void setSprice(Integer sprice) {
        this.sprice = sprice;
    }

    @Override
    public String toString() {
        return "Cart{" + "cartId=" + cartId + ", username='" + username + '\'' + ", sid=" + sid + ", sname='" + sname + '\'' + ", simage='" + simage + '\'' + ", sprice=" + sprice + '}';
    }
}
