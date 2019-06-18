package edu.etime.electronicmall.shoppingcart.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.electronicmall.dao.ShoopingCartMapper;
import edu.etime.electronicmall.entities.Productss;
import edu.etime.electronicmall.entities.ShoopingCart;
import edu.etime.electronicmall.shoppingcart.services.interfaces.ShoppingCartService;

/**
 * 购物车服务层接口实现类
 * @author 郭佳
 *
 */
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {

	@Autowired
	private ShoopingCartMapper scdao;
	
	/**
	 * 插入一条购物车信息
	 */
	@Override
	public int add(ShoopingCart spct) {
		
		return scdao.insertSelective(spct);
	}

	
	/**
	 * 查询购物车中所有商品信息
	 */
	@Override
	public List<ShoopingCart> selectAllSCInfo() {
		
		return scdao.selectAllSCInfo();
	}


	/**
	 * 根据商品id查询购物车信息
	 */
	@Override
	public ShoopingCart selectByPdtid(String pdtid) {
		
		return scdao.selectByPdtid(pdtid);
	}


	 /**
     * 根据购物车id和商品id查询购物车信息 
     * @param id
     * @param pdtid
     * @return
     */
	@Override
	public List<ShoopingCart> selectByScidAndPdtid(String id) {
		
		return scdao.selectByScidAndPdtid(id);
	}


	/**
     * 修改购物车中商品的数量
     * @param spct
     * @return
     */
	@Override
	public int updatePdtnumber(ShoopingCart spct) {
		
		return scdao.updateByPrimaryKeySelective(spct);
	}


	

}
