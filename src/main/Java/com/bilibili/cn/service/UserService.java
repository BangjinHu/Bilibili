package com.bilibili.cn.service;

import com.bilibili.cn.entity.User;

import java.util.List;

public interface UserService {

    User findUserByUserName(String username);

    List<User> findAllUsers();

}
