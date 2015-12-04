package com.fukang.controller;

import com.fukang.model.UserModel;
import com.fukang.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    IUserService iUserService;

    @RequestMapping("/check")
    @ResponseBody
    public Object check(String username, String password) {
        UserModel user = iUserService.getUserByUsername(username);
        Map<String, String> map = new HashMap<>();
        if (user != null && user.getPassword().equals(password)) {
            map.put("status", "success");
            map.put("msg", "User login success!");
        } else {
            map.put("status", "failed");
            map.put("msg", "User login failed!");
        }
        return map;
    }

    @RequestMapping("/register")
    @ResponseBody
    public Object register(String username, String password) {
        Map<String, String> map = new HashMap<>();
        UserModel user = new UserModel(new Date(), username, password);
        if (iUserService.addUser(user)) {
            map.put("status", "success");
            map.put("msg", "register success!");
        } else {
            map.put("status", "failed");
            map.put("msg", "register failed!");
        }
        return map;
    }

    @RequestMapping("/validateUser")
    @ResponseBody
    public Object validateUser(String username) {
        Map<String, String> map = new HashMap<>();
        map.put("valid", iUserService.getUserByUsername(username) == null ? "true" : "false");
        return map;
    }
}
