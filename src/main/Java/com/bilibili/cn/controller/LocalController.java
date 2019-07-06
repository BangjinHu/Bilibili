package com.bilibili.cn.controller;

import com.bilibili.cn.entity.Admin;
import com.bilibili.cn.entity.User;
import com.bilibili.cn.service.AdminService;
import com.bilibili.cn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/local")
public class LocalController {

    @Autowired
    private UserService userService;

    @Autowired
    private AdminService adminService;

    @RequestMapping("/")
    public String login(){
        return "local/local";
    }

    @RequestMapping("/dologin")
    public String dologin(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        if (username == null){
            model.addAttribute("message", "用户名为空");
            return "local/err";
        }else {
            session.setAttribute("username", username);
            User user = userService.findUserByUserName(username);
            if (user != null){
                model.addAttribute("user", user);
                response.sendRedirect("user/main");
            }else {
                Admin admin = adminService.findAdminByUserName(username);
                if (admin == null){
                    return "no-auth";
                }else {
                    model.addAttribute("admin", admin);
                    return "admin/main";
                }
            }
        }
        return null;
    }
}
