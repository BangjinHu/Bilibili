package com.bilibili.cn.mapper;

import com.bilibili.cn.entity.User;

import java.util.List;

public interface UserMapper {

    User findUserByUserName(String username);

    List<User> findAllUsers();

}
