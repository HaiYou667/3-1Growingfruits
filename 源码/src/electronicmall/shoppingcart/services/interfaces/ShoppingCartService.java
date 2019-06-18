package edu.etime.electronicmall.shoppingcart.services.interfaces;

import java.util.List;

import edu.etime.electronicmall.entities.Productss;
import edu.etime.electronicmall.entities.ShoopingCart;

/**
 * 购物车的服务层接口
 * @author 郭佳
 *
 */
public interface ShoppingCartService {

	/***
	 * 插入一条购物车信息
	 * @return
	 */
	public int add(ShoopingCart spct);
	
	
	/**
	 * 查询购物车中所有商品信息
	 * @return
	 */
	public List<ShoopingCart> selectAllSCInfo();
	
	/**
	 * 根据商品id查询购物车信息
	 * @param id
	 * @return
	 */
	public ShoopingCart selectByPdtid(String pdtid);
	
	
	 /**
     * 根据购物车id和商品id查询购物车信息 
     * @param id
     * @param pdtid
     * @return
     */
    public List<ShoopingCart> selectByScidAndPdtid(String id);
    
    
    /**
     * 修改购物车中商品的数量
     * @param spct
     * @return
     */
    public int updatePdtnumber(ShoopingCart spct);
   
}
