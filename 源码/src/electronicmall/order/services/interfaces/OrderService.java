package edu.etime.electronicmall.order.services.interfaces;

import edu.etime.electronicmall.entities.Ord;

/**
 * 订单的服务层接口
 * @author 郭佳
 *
 */
public interface OrderService {
	
	
	/**
	 * 增加订单
	 * @param ord
	 * @return
	 */
	public int add(Ord ord);
	
	/**
	 * 根据订单id查询一条订单信息
	 * @return
	 */
	public Ord selectOrdByordid(String ordid);
}
