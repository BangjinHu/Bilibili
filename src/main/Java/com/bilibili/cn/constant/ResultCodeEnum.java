package com.bilibili.cn.constant;

public enum ResultCodeEnum {

    SUCCESS(0), FAILED(1);
    private int val;

    ResultCodeEnum(int val) {
        this.val = val;
    }

    public int getVal() {
        return val;
    }
}
