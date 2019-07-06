package com.bilibili.cn.mapper;

import com.bilibili.cn.entity.Admin;

public interface AdminMapper {

    Admin findAdminByUserName(String username);

}
