package com.chinasofti.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.chinasofti.dao.GoodsDao;
import com.chinasofti.mapper.GoodsMapper;
import com.chinasofti.pojo.Goods;



@Repository

public class GoodsDaoImpl implements GoodsDao{
	@Autowired
	GoodsMapper mapper;
	@Override
	public List<Goods> findall() {
		List<Goods> findall = mapper.findall();
		return findall;
	}
	
	
}
