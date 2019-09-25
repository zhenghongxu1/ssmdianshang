package com.chinasofti.controller;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.pojo.User;
import com.chinasofti.server.UserDaoServer;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller
@RequestMapping("/user")
public class controllerimple {
	@Autowired
	UserDaoServer dao;
	@RequestMapping("/register")
	@ResponseBody
	public String register(User user){
		dao.register(user);
		return "Text Success";
	}
	
	
//	µÇÂ¼
	@RequestMapping("/login")
	@ResponseBody
	public String login(String name,String password,HttpSession seeion){
		String login = dao.login(name, password);
		if(login.equals("1")){
			User sfindOne = dao.sfindOne(name);
			System.out.println(sfindOne);
			seeion.setAttribute("yonghu", sfindOne);
			System.out.println(seeion.getAttribute("yonghu"));
		}
		return login;
	}
//	µÇÂ¼¼ì²â
	@RequestMapping("/logincheck")
	@ResponseBody
	public String loginUser(String name){
		String login = dao.loginUser(name);
		return login;
	}
	
//	¸ü¸ÄÃÜÂë
	@RequestMapping("/updatePass")
	@ResponseBody
	public int updatePass(User user,String oldpassword){
		user.setUserid(1);
		int updatePassword = dao.updatePassword(user,"aaa");
		return updatePassword;
	}
}	
    
