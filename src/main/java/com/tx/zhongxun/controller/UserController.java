package com.tx.zhongxun.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.tx.zhongxun.mapper.UsersMapper;
import com.tx.zhongxun.pojo.Users;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class UserController {
    @Resource
    private UsersMapper usersMapper;

    //添加页面
    @RequestMapping("add")
    public String add() {
        return "add";
    }

    //添加
    @RequestMapping("addUser")
    public String listUser(Users users) throws Exception {
        boolean flag = usersMapper.add(users) > 0;
        return "redirect:listUser";
    }
    //删除
    @RequestMapping("deleteUser")
    public String deleteUser(Users users) throws Exception {
        usersMapper.del(users.getId());
        return "redirect:listUser";
    }
    //修改
    @RequestMapping("updateUser")
    public String updateUser(Users Users) throws Exception {
        boolean flag = usersMapper.update(Users) > 0;
        return "redirect:listUser";
    }
    //查找(用于修改)
    @RequestMapping("findUser")
    public String findUser(int id, Model model) throws Exception {
        Users Users= usersMapper.getUser(id);
        model.addAttribute("Users", Users);
        return "modify";
    }
    //遍历
    @RequestMapping("listUser")
    public String listUser(Model model, @RequestParam(value = "start", defaultValue = "0") int start,
                           @RequestParam(value = "size", defaultValue = "2") int size) throws Exception {
        PageHelper.startPage(start,size,"id asc");
        List<Users> userList=usersMapper.getUsersList();
        PageInfo<Users> page = new PageInfo<>(userList);
        model.addAttribute("pages", page);
        return "index";
    }
}