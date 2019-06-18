package edu.etime.electronicmall.order.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.electronicmall.dao.OrdMapper;
import edu.etime.electronicmall.entities.Ord;
import edu.etime.electronicmall.order.services.interfaces.OrderService;

/**
 * 订单服务层接口实现层
 * @author 郭佳
 *
 */
@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrdMapper odao;
	
	
	
	/**
	 * 增加订单
	 */
	@Override
	public int add(Ord ord) {
		
		return odao.insertSelective(ord);
	}

	
	
	/**
	 * 根据订单id查询一条订单信息
	 * @return
	 */
	@Override
	public Ord selectOrdByordid(String ordid) {
		
		return odao.selectByPrimaryKey(ordid);
	}

}
