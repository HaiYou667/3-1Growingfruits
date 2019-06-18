package edu.etime.electronicmall.returns.services.interfaces;

import java.util.List;

import edu.etime.electronicmall.dto.OrderDetailDto;
import edu.etime.electronicmall.entities.Returns;


public interface ReturnsService {

	/**
	 * 查询出所有的订单
	 * @return
	 */
	public List<OrderDetailDto> orderdetail(OrderDetailDto orderdto);
	/**
	 * 根据id查出一条详细的信息
	 * @return
	 */
	public OrderDetailDto selectbyid(String id);
	
	/**
	 * 向returns表里面插入数据
	 * @param returns
	 * @return
	 */
	public int insertreturn(Returns returns);
	/**
	 * 买家插入退货表的同时，将状态更新为0，未审核状态
	 * @param returns
	 * @return
	 */
	public List<OrderDetailDto> selectstate(OrderDetailDto orderdto);
	/*public int updaterrturn(Returns returns);*/
}
