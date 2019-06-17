package edu.etime.electronicmall.seller.services.interfaces;

import java.util.List;

import edu.etime.electronicmall.entities.Seller;
/**
 * 商家管理服务层
 * @author 杨珍妮
 *
 */
public interface SellerServices {
    /**
     * 增加商家
     * @param seller
     * @return
     */
	public int insert(Seller seller);
	/**
	 * 查询商家
	 * @param seller
	 * @return
	 */
	public List<Seller> select(Seller seller);
	/**
	 * 根据ID查询商家
	 * @param id
	 * @return
	 */
	public Seller getbyid(String id);
	/**
	 * 修改商家
	 * @param seller
	 * @return
	 */
	public int update(Seller seller);
}
