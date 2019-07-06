package com.bilibili.cn.entity;

public class Product {

    private Integer id;
    private String sname;//商品名称
    private Integer sprice;
    private String imageUrl;//商品图片地址
    private Integer storeCount;//商品库存

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public Integer getSprice() {
        return sprice;
    }

    public void setSprice(Integer sprice) {
        this.sprice = sprice;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public Integer getStoreCount() {
        return storeCount;
    }

    public void setStoreCount(Integer storeCount) {
        this.storeCount = storeCount;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", sname='" + sname + '\'' + ", sprice=" + sprice + ", imageUrl='" + imageUrl + '\'' + ", storeCount=" + storeCount + '}';
    }
}
