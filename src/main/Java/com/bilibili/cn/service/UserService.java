package com.bilibili.cn.service;

import com.bilibili.cn.DataTables.wrapper.request.DataTableRequest;
import com.bilibili.cn.entity.User;

import java.util.List;

public interface UserService {

    User findUserByUserName(String username);

    List<User> findAllUsers();

    List<User> queryUsersForDataTable(DataTableRequest dtRequest, String[] showColumns);

    int countFilteredUsersForDataTable(DataTableRequest dtRequest, String[] showColumns);

    int countTotalUsersForDataTable();

    void saveOrUpdate(User user);

    void delUserById(Integer id);

    User findUserById(Integer id);
}
