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
	public void register() {
		service.register();
		
	}

	@Override
	public void login(String name, String password) {
		service.login(name, password);
		
	}

	@Override
	public void updatePassword(String password, String newPassword) {
		service.updatePassword(password, newPassword);
		
	}

	@Override
	public User sfindOne(long userid) {
		service.sfindOne(userid);
		return null;
	}

}
