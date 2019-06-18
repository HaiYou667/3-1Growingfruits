package edu.etime.electronicmall.orderdetail.services.interfaces;

import edu.etime.electronicmall.entities.OrderDetail;

/**
 * 订单明细表的服务层接口
 * @author 郭佳
 *
 */
public interface OrderDetailService {

	/**
	 * 增加一条订单明细
	 * @return
	 */
	public int addOrdDetail(OrderDetail od);
}
