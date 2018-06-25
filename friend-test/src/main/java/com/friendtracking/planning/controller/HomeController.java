package com.friendtracking.planning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.friendtracking.planning.dao.FriendTestDAO;
import com.friendtracking.planning.entities.FriendTestEntity;

@Controller
public class HomeController {
    @Autowired
    private FriendTestDAO friendTestDAO;
    
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("result", friendTestDAO.getAll());
        return "index";
    }
    
    @PostMapping("/")
    public @ResponseBody List<FriendTestEntity> search(Model model, String name) {
        return friendTestDAO.getName(name);
    }
}
