package com.bilibili.cn.controller;

import com.bilibili.cn.BaseTest;
import com.bilibili.cn.entity.User;
import com.bilibili.cn.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class LoginControllerTest extends BaseTest {

    @Autowired
    private UserService userService;

    @Test
    public void findUserByUserNameTest(){
        String username = "2048";
        User user = userService.findUserByUserName(username);

        System.out.println(user.toString());
    }
}
