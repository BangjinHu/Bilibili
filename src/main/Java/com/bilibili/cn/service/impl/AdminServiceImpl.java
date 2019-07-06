package com.bilibili.cn.service.impl;

import com.bilibili.cn.entity.Admin;
import com.bilibili.cn.mapper.AdminMapper;
import com.bilibili.cn.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin findAdminByUserName(String username) {
        return adminMapper.findAdminByUserName(username);
    }
}
