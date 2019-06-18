package edu.etime.electronicmall.returns.services.interfaces;

import java.util.List;

import edu.etime.electronicmall.dto.ReturnDto;

public interface SellerReturnService {

	/**
	 * 查询出订单详情，编号，日期，配送方式，支付方式
	 * @return
	 */
	public List<ReturnDto> listorder();
	/**
	 * 根据id查询一条详细的退货记录
	 * @param id
	 * @return
	 */
	public ReturnDto getreturnbyid(String id);
	/**
	 * 编辑审核页面
	 * @param returndto
	 * @return
	 */
	public int edit(ReturnDto returndto);
}
