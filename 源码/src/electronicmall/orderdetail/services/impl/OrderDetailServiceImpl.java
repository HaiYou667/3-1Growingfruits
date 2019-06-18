package edu.etime.electronicmall.orderdetail.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.electronicmall.dao.OrderDetailMapper;
import edu.etime.electronicmall.entities.OrderDetail;
import edu.etime.electronicmall.orderdetail.services.interfaces.OrderDetailService;

/**
 * 订单明细的服务层接口的实现
 * @author 郭佳 
 *
 */
@Service
public class OrderDetailServiceImpl implements OrderDetailService{

	@Autowired
	private OrderDetailMapper oddao;
	
	
	/**
	 * 增加一条订单明细
	 */
	@Override
	public int addOrdDetail(OrderDetail od) {
		
		return oddao.insertSelective(od);
	}

}
