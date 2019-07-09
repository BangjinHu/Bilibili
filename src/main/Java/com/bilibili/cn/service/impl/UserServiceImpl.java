package com.bilibili.cn.service.impl;

import com.bilibili.cn.DataTables.condition.DTCondition;
import com.bilibili.cn.DataTables.condition.DTConditionParser;
import com.bilibili.cn.DataTables.wrapper.request.DataTableRequest;
import com.bilibili.cn.entity.User;
import com.bilibili.cn.mapper.UserMapper;
import com.bilibili.cn.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    public static  final Logger LOG = Logger.getLogger(UserServiceImpl.class);

    @Autowired
    private UserMapper userMapper;

    @Override
    public User findUserByUserName(String username) {
        return userMapper.findUserByUserName(username);
    }

    @Override
    public List<User> findAllUsers() {
        return userMapper.findAllUsers();
    }

    @Override
    public List<User> queryUsersForDataTable(DataTableRequest dtRequest, String[] showColumns) {
        //1.保证前台传过来的值和数据库字段值相一致
        Map<String, String> replaceMap = new HashMap<>();
        replaceMap.put("userId", "user_id");
        replaceMap.put("userRealName", "user_realname");
        replaceMap.put("userName", "username");
        replaceMap.put("userBankCard", "user_bankcard");
        replaceMap.put("userSex", "user_sex");
        replaceMap.put("userHandImg", "user_hand");
        replaceMap.put("userAddr", "user_addr");
        replaceMap.put("userPhone", "user_phone");
        replaceMap.put("userQQ", "user_qq");
        replaceMap.put("userEmail", "user_email");
        replaceMap.put("userCollection", "user_collection");
        replaceMap.put("userState", "user_state");
        replaceMap.put("userLogin", "user_login");
        replaceMap.put("userIp", "user_ip");
        replaceMap.put("userPass", "user_pass");
        replaceMap.put("userRmb", "user_rmb");

        //2.表示组装的sql语句
        DTCondition condition = DTConditionParser.parse(dtRequest, showColumns, replaceMap);

        return userMapper.queryUsersForDataTable(condition);
    }

    @Override
    public int countFilteredUsersForDataTable(DataTableRequest dtRequest, String[] showColumns) {

        //1.保证前台传过来的值和数据库字段值相一致
        Map<String, String> replaceMap = new HashMap<>();
        replaceMap.put("userId", "user_id");
        replaceMap.put("userRealName", "user_realname");
        replaceMap.put("userName", "username");
        replaceMap.put("userBankCard", "user_bankcard");
        replaceMap.put("userSex", "user_sex");
        replaceMap.put("userHandImg", "user_hand");
        replaceMap.put("userAddr", "user_addr");
        replaceMap.put("userPhone", "user_phone");
        replaceMap.put("userQQ", "user_qq");
        replaceMap.put("userEmail", "user_email");
        replaceMap.put("userCollection", "user_collection");
        replaceMap.put("userState", "user_state");
        replaceMap.put("userLogin", "user_login");
        replaceMap.put("userIp", "user_ip");
        replaceMap.put("userPass", "user_pass");
        replaceMap.put("userRmb", "user_rmb");

        //2.字段查询组装
        DTCondition condition = DTConditionParser.parse(dtRequest, showColumns, replaceMap);

        return userMapper.countFilteredUsersForDataTable(condition);
    }

    @Override
    public int countTotalUsersForDataTable() {
        return userMapper.countTotalUsersForDataTable();
    }

    @Override
    public void saveOrUpdate(User user) {
        if (user.getUserId() != null){
            userMapper.update(user);
        }else {
            userMapper.save(user);
        }
    }

    @Override
    public void delUserById(Integer id) {
        userMapper.delUserById(id);
    }

    @Override
    public User findUserById(Integer id) {
        return userMapper.findUserById(id);
    }
}
