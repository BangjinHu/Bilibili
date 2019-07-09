package com.bilibili.cn.mapper;

import com.bilibili.cn.DataTables.condition.DTCondition;
import com.bilibili.cn.entity.User;

import java.util.List;

public interface UserMapper {

    User findUserByUserName(String username);

    List<User> findAllUsers();

    List<User> queryUsersForDataTable(DTCondition condition);

    int countFilteredUsersForDataTable(DTCondition condition);

    int countTotalUsersForDataTable();

    User findUserById(Integer id);

    void delUserById(Integer id);

    void save(User user);

    void update(User user);

}
