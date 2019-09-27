package com.chinasofti.server;

import java.util.List;

import com.chinasofti.pojo.Goods;

public interface GoodsDaoServer {
	//查看商品信息
    List<Goods> findall();
}
