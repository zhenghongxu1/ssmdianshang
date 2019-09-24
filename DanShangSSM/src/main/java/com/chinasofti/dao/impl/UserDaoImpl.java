package com.chinasofti.dao.impl;

import org.springframework.stereotype.Repository;

import com.chinasofti.dao.UserDao;
import com.chinasofti.pojo.User;

@Repository
public class UserDaoImpl implements UserDao{
 
	@Override
	public void register() {
		System.out.println("实现注册！");
	}

	@Override
	public void login(String usernam, String password) {
		System.out.println("实现登录！");
		
	}

	@Override
	public void updatePassword(String password, String newPassword) {
		System.out.println("实现修改密码！");
		
	}

	@Override
	public User sfindOne(long userid) {
		System.out.println("实现chaxun！");
		return null;
	}


}
