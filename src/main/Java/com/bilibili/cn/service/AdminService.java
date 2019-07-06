package com.bilibili.cn.service;

import com.bilibili.cn.entity.Admin;

public interface AdminService {

    Admin findAdminByUserName(String username);
}
