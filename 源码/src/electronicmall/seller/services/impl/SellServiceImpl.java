package edu.etime.electronicmall.seller.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.electronicmall.dao.SellerMapper;
import edu.etime.electronicmall.entities.Seller;
import edu.etime.electronicmall.seller.services.interfaces.SellerServices;
/**
 * 商家管理接口服务层
 * @author 杨珍妮
 *
 */
@Service
public class SellServiceImpl implements SellerServices{
	@Autowired
	private SellerMapper dao;

	@Override
	public int insert(Seller seller) {
		return dao.insert(seller);
	}

	@Override
	public List<Seller> select(Seller seller) {
		return dao.select(seller);
	}

	@Override
	public Seller getbyid(String id) {
		return dao.selectByPrimaryKey(id);
	}

	@Override
	public int update(Seller seller) {
		return dao.updateByPrimaryKeySelective(seller);
	}


}
