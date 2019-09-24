package com.chinasofti.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chinasofti.pojo.User;
import com.chinasofti.server.UserDaoServer;

@Controller
@RequestMapping("/user")
public class controllerimple {
	@Autowired
	UserDaoServer dao;
	@RequestMapping("/register")
	@ResponseBody
	public String register(){
		return "Text Success";
	}
	
	@RequestMapping("/login")
	public void login(){
		dao.login("123456", "123456");
	}
	
	
	
	/*public String register(){
		return "Text Success";
	}*/
}
