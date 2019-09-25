package com.chinasofti.dao.impl;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chinasofti.dao.UserDao;
import com.chinasofti.mapper.UserMapper;
import com.chinasofti.pojo.User;
import com.chinasofti.pojo.UserExample;
import com.chinasofti.pojo.UserExample.Criteria;
import com.chinasofti.pojo.UserWithBLOBs;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	UserMapper dao;
	@Override
	public void register(User user) {
		UserWithBLOBs userWithBLOBs = new  UserWithBLOBs();
		userWithBLOBs.setName(user.getName());
		userWithBLOBs.setPassword(user.getPassword());
		dao.insert(userWithBLOBs);
	}

	@Override
	@ResponseBody
	public String login(String usernam, String password) {
		UserExample userExample = new UserExample();
		Criteria createCriteria = userExample.createCriteria();
//		将传进来的信号进行比较
		 createCriteria.andNameEqualTo(usernam).andPasswordEqualTo(password);
		List<User> selectByExample = dao.selectByExample(userExample);
		if(selectByExample.size()>=1){
			return "1";
		}else{
			return "2";
		}
	}
	@Override
	public int updatePassword(User user,String oldPassword) {
	/*	查询旧密码*/
		UserExample example = new UserExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andPasswordEqualTo(oldPassword).andUseridEqualTo(user.getUserid());
		List<User> selectByExample = dao.selectByExample(example);
		if(selectByExample.size()<=0){
			return 0;
		}
		/*	修改新密码*/
		dao.changeWord(user);
		return 1;
	}

	@Override
	public User sfindOne(String name) {
		User sfindOne = dao.sfindOne(name);
	System.out.println(sfindOne);
		return sfindOne;
	}

	
	
	
	@Override
	@ResponseBody
	public String loginUser(String name) {
		UserExample userExample = new UserExample();
		Criteria createCriteria = userExample.createCriteria();
//		将传进来的信号进行比较
		 createCriteria.andNameEqualTo(name);
		List<User> selectByExample = dao.selectByExample(userExample);
		System.out.println(selectByExample.size());
		if(selectByExample.size()>=1){ 
			System.out.println("账户存在");
			return "1";  
		}else{
			System.out.println("账户不存在");
			return "2";
		}
	}


}
