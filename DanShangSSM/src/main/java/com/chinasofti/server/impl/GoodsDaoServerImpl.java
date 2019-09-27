package com.chinasofti.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chinasofti.dao.GoodsDao;
import com.chinasofti.dao.UserDao;
import com.chinasofti.pojo.Goods;
import com.chinasofti.pojo.User;
import com.chinasofti.server.GoodsDaoServer;
import com.chinasofti.server.UserDaoServer;
@Service
public class GoodsDaoServerImpl implements GoodsDaoServer{
    @Autowired
    GoodsDao serve;
	@Override
	
	public List<Goods> findall() {
		List<Goods> findall = serve.findall();
		return findall;
	}
}
