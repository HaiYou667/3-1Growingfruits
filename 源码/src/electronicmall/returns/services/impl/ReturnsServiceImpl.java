package edu.etime.electronicmall.returns.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.electronicmall.dao.OrderDetailMapper;
import edu.etime.electronicmall.dao.ReturnsMapper;
import edu.etime.electronicmall.dto.OrderDetailDto;
import edu.etime.electronicmall.entities.Returns;
import edu.etime.electronicmall.returns.services.interfaces.ReturnsService;

@Service
public class ReturnsServiceImpl implements ReturnsService {

	@Autowired
	private OrderDetailMapper orderdetaildao;
	@Autowired
	private ReturnsMapper returndao;

	/**
	 * 查询出所有的订单
	 */
	@Override
	public List<OrderDetailDto> orderdetail(OrderDetailDto orderdto) {

		return orderdetaildao.selectorderdetail(orderdto);
	}

	/**
	 * 根据id查询出一条详细的信息
	 */

	@Override
	public OrderDetailDto selectbyid(String id) {

		return orderdetaildao.selectbyid(id);
	}
    /**
     * 向returns表里面插入数据
     */
	@Override
	public int insertreturn(Returns returns) {
		
		return returndao.insertSelective(returns);
	}
    /**
     * 买家插入退货表的同时，将状态更新为0，未审核状态
     */
	/*@Override
	public int updaterrturn(Returns returns) {
		
		return returndao.updateByPrimaryKeySelective(returns);
	}*/

	@Override
	public List<OrderDetailDto> selectstate(OrderDetailDto orderdto) {
		
		return orderdetaildao.selectstate(orderdto);
	}

}
