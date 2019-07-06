package com.bilibili.cn.controller;

import com.bilibili.cn.entity.Admin;
import com.bilibili.cn.entity.User;
import com.bilibili.cn.exception.UserException;
import com.bilibili.cn.service.AdminService;
import com.bilibili.cn.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("")
public class LoginController {

    private static Logger LOG = Logger.getLogger(LoginController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private AdminService adminService;

    @RequestMapping("/")
    public String loginInitial(HttpSession session, Model model) throws UserException {
        String username = (String) session.getAttribute("username");
        String password = (String) session.getAttribute("password");

        User user = userService.findUserByUserName(username);
        if (user != null){
            if (password.equals(user.getPassword())){
                model.addAttribute("user", user);
                LOG.info("用户" + user.toString() + "登录哔哩哔哩");
                return "user/main";
            }else {
                model.addAttribute("message", "用户名或密码错误，请重新登录！");
                return "error";
            }
        }

        Admin admin = adminService.findAdminByUserName(username);
        if (admin != null){
            if (password.equals(admin.getPassword())){
                model.addAttribute("admin", admin);
                LOG.info("管理员" + admin.toString() + "登录哔哩哔哩后台");
                return "admin/main";
            }else {
                model.addAttribute("message", "管理员用户名或密码错误，请重新登录！");
                return "error";
            }
        }

        model.addAttribute("message", "未知异常，请重启浏览器或重新尝试登录！");
        return "error";
    }

    @RequestMapping("")
    public String loginBlank(HttpSession session, Model model){
        String username = (String) session.getAttribute("username");
        User user = userService.findUserByUserName(username);
        if (user != null){
            model.addAttribute("user", user);
            LOG.info("用户" + user.toString() + "登录哔哩哔哩");
            return "user/main";
        }
        return "error";
    }

}
