package com.bilibili.cn.controller;

import com.alibaba.fastjson.JSON;
import com.bilibili.cn.constant.Constant;
import com.bilibili.cn.entity.Admin;
import com.bilibili.cn.entity.User;
import com.bilibili.cn.exception.UserException;
import com.bilibili.cn.service.AdminService;
import com.bilibili.cn.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private static Logger LOG = Logger.getLogger(AdminController.class);

    @Autowired
    private AdminService adminService;

    @Autowired
    private UserService userService;

    @RequestMapping("/main")
    public String main(Model model, HttpSession session) throws UserException {
        String username = (String) session.getAttribute("username");
        if (username == null){
            throw new UserException("用户未登录！");
        }
        LOG.info("登录管理员账号：" + username);

        Admin admin = adminService.findAdminByUserName(username);
        if (admin == null){
            throw new UserException("管理员信息未录入！");
        }
        LOG.info(admin.toString());

        session.setAttribute(Constant.SESSION_KEY_FOR_ADMIN_USERNAME, admin.getUsername());
        admin = checkAdminLogin(session);
        model.addAttribute("admin", admin);

        System.out.println(admin.toString());
        return "admin/main";
    }

    public Admin checkAdminLogin(HttpSession session) throws UserException {
        String username = (String) session.getAttribute(Constant.SESSION_KEY_FOR_ADMIN_USERNAME);
        if (username == null){
            throw new UserException("管理员未登录，请登录！");
        }
        Admin admin = adminService.findAdminByUserName(username);
        if (admin == null){
            throw new UserException("管理员信息未录入！");
        }
        return admin;
    }

    @RequestMapping("/logout")
    public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        LOG.info("管理员" + request.getSession().getAttribute("username") + "退出哔哩哔哩系统后台");
        String redirectUrl = Constant.CAS_LOGOUT_URL;
        response.sendRedirect(redirectUrl);
    }

    @RequestMapping("/user")
    public String user(HttpSession session, Model model) throws UserException {
        Admin admin = checkAdminLogin(session);
        model.addAttribute("admin", admin);

        List<User> userList = userService.findAllUsers();
        model.addAttribute("userList", userList);

        return "admin/user";
    }

    @RequestMapping("/findAdminByUserName/{username}")
    @ResponseBody
    public Object findAdminByUserName(@PathVariable("username") String username){

        Admin admin = adminService.findAdminByUserName(username);

        return JSON.toJSON(admin);
    }
}
