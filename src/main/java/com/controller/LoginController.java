package com.controller;

import com.alibaba.fastjson.JSON;
import com.model.LayuiData;
import com.model.Login;
import com.service.LoginService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("login")
public class LoginController {
    private static Logger logger = Logger.getLogger("secondLogger");

    /**
     * struts 接收参数三种方式：属性方式接收，JavaBean方式接收，ModelDriven方式接收参数,前两种都必须设置get和set方法
     * */
    //Spring 注入方式
    @Autowired
    private LoginService loginInfoService;

    @RequestMapping("toLogin")
    public String toLogin() {
        return "login";
    }

    @RequestMapping(value="login")
    public @ResponseBody Map login(@RequestBody Login user) {
        Map map = new HashMap();
        Login login = loginInfoService.getLoginByUsername(user.getUsername());

        if (login != null) {
            map.put("login", login);

            if(login.getPassword().equals(user.getPassword())) {
                map.put("code", 0);
                map.put("message", "登录成功.");
            }else{
                map.put("code", 1);
                map.put("message", "密码错误.");
            }
        } else {
            map.put("code", 2);
            map.put("message", "用户名不存在.");
            map.put("login", user);
        }

        return map;
    }

    @RequestMapping("addUser")
    public ModelAndView addUser(Login user, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        Login manager = (Login) session.getAttribute("loginUser");
        Map model = new HashMap();
        if (manager != null && manager.getUsername().equals("admin")) {
            if(user.getUsername() != null) {
                if (loginInfoService.getLoginByUsername(user.getUsername()) != null) {
                    model.put("message", "登录名称已经存在，请更换用户名。");
                } else {
                    loginInfoService.insertLogin(user);
                    model.put("message", "用户\"" + user.getName() + "\"添加成功。");
                }
            }
        } else {
            model.put("message", "权限不够或未登录，请返回登陆。");
        }

        return new ModelAndView("userview/addUser",model);
    }

    @RequestMapping("searchUser")
    public ModelAndView searchUser(HttpServletRequest request, HttpServletResponse response) {
        Map model = new HashMap();
        String condition = request.getParameter("condition");
        String conditionContent = request.getParameter("conditionContent");
        if (conditionContent == null) {
            conditionContent = "jsp";
        }
        if (condition == null) {
            condition = "username";
        }

        List list = loginInfoService.getLoginByCondition(condition, conditionContent);
        model.put("list", list);
        model.put("condition", condition);
        model.put("conditionContent", conditionContent);
        return new ModelAndView("userview/searchUser", model);
    }

    @RequestMapping("searchUserBody")
    public @ResponseBody LayuiData searchUserBody(String field, String value, @RequestParam("page") Integer page, @RequestParam("limit") Integer limit) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List list = loginInfoService.queryLoginByCondition(field, value, page, limit);
        long count = loginInfoService.countLoginByQueryCondition(field, value);
        return new LayuiData(0, list, count);
    }

    @RequestMapping("deleteUser")
    public ModelAndView deleteUser(HttpServletRequest request, HttpServletResponse response) {
        Map model = new HashMap();
        String id = request.getParameter("id");
        if (id != null) {
            int _id = Integer.parseInt(id);
            Login user = loginInfoService.getLoginById(_id);
            if (!user.getUsername().equals("jsp")) {
                loginInfoService.delLoginById(_id);
                model.put("message", "删除用户成功。");
            } else {
                model.put("message", "不能删除初始用户。");
            }
        }

        return new ModelAndView("userview/searchUser", model);
    }

    private void writeResponseData(HttpServletResponse response, Object data) {
        response.setContentType("text/html;charset=utf-8");
        try
        {
            PrintWriter out = response.getWriter();
            out.println(data.toString());
            out.flush();
            out.close();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}