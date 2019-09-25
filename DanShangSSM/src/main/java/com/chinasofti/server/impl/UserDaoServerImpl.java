package com.chinasofti.server.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.dao.UserDao;
import com.chinasofti.pojo.User;
import com.chinasofti.server.UserDaoServer;
@Service
public class UserDaoServerImpl implements UserDaoServer{
    @Autowired
    UserDao service;
	@Override
	public void register(User user) {
		service.register(user);
	}

	@Override
	public String login(String name, String password) {
		String login = service.login(name, password);
		return login;
	}

	@Override
	public int updatePassword(User user,String oldPassword) {
		return service.updatePassword(user,oldPassword);
		
	}

	@Override
	public User sfindOne(String name) {
		User sfindOne = service.sfindOne(name);
		return sfindOne;
	}

	@Override
	public String loginUser(String name) {
		String loginUser = service.loginUser(name);
		return loginUser;
	}

}
