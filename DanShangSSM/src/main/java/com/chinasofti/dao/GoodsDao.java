package com.chinasofti.dao;
import java.util.List;
import com.chinasofti.pojo.Goods;
public interface GoodsDao {
	//查看商品信息
     List<Goods> findall();
}
