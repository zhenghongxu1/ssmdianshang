package com.chinasofti.server;


import com.chinasofti.pojo.User;

public interface UserDaoServer {
//  注册
	void register(User user);
//  登录 
	String login(String name,String password);
//	修改密码
	int updatePassword(User user,String oldPassword);
//	查询个人信息
	User  sfindOne(String name);
//	用户存在
	String loginUser(String name);
}
