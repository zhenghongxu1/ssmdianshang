package com.chinasofti.dao;

import com.chinasofti.pojo.User;
public interface UserDao {
//  注册1 
	void register();
//  登录 
	void login(String name,String password);
//	修改密码
	void updatePassword(String password,String newPassword);
//	查询个人信息
	User  sfindOne(long userid);
}
