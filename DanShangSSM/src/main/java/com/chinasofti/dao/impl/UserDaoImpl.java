package com.chinasofti.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chinasofti.dao.UserDao;
import com.chinasofti.mapper.UserMapper;
import com.chinasofti.pojo.User;
import com.chinasofti.pojo.UserExample;
import com.chinasofti.pojo.UserExample.Criteria;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	UserMapper dao;
	@Override
	public void register(User user) {
		System.out.println(1);
	}

	@Override
	public void login(String usernam, String password) {
		UserExample userExample = new UserExample();
		Criteria createCriteria = userExample.createCriteria();
		 createCriteria.andNameEqualTo("123456").andPasswordEqualTo("123456");
		List<User> selectByExample = dao.selectByExample(userExample);
		System.out.println(selectByExample);
		
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
