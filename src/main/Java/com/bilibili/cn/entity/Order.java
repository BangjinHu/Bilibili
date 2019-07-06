package com.bilibili.cn.entity;

import java.util.Date;

public class Order {

    private Integer id;
    private String orderGridName;//订单商品名称
    private String orderGridImg;//订单商品图片
    private Integer orderTotalPrice;//订单总价格
    private Integer orderState;//订单状态
    private Date orderTime;//订单创建时间
    private String orderAddr;//订单地址

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderGridName() {
        return orderGridName;
    }

    public void setOrderGridName(String orderGridName) {
        this.orderGridName = orderGridName;
    }

    public String getOrderGridImg() {
        return orderGridImg;
    }

    public void setOrderGridImg(String orderGridImg) {
        this.orderGridImg = orderGridImg;
    }

    public Integer getOrderTotalPrice() {
        return orderTotalPrice;
    }

    public void setOrderTotalPrice(Integer orderTotalPrice) {
        this.orderTotalPrice = orderTotalPrice;
    }

    public Integer getOrderState() {
        return orderState;
    }

    public void setOrderState(Integer orderState) {
        this.orderState = orderState;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderAddr() {
        return orderAddr;
    }

    public void setOrderAddr(String orderAddr) {
        this.orderAddr = orderAddr;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", orderGridName='" + orderGridName + '\'' + ", orderGridImg='" + orderGridImg + '\'' + ", orderTotalPrice=" + orderTotalPrice + ", orderState=" + orderState + ", orderTime=" + orderTime + ", orderAddr='" + orderAddr + '\'' + '}';
    }
}
