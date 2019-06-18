package edu.etime.electronicmall.returns.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.electronicmall.dao.OrdMapper;
import edu.etime.electronicmall.dao.ReturnsMapper;
import edu.etime.electronicmall.dto.ReturnDto;
import edu.etime.electronicmall.returns.services.interfaces.SellerReturnService;

@Service
public class SellerServiceImpl implements SellerReturnService{

	@Autowired
	private ReturnsMapper returndao;
	/**
	 * 查询出所有的退货表里面的订单详情
	 */
	@Override
	public List<ReturnDto> listorder() {
		
		return returndao.listorder();
	}
	/**
	 * 根据id查询一条详细的退货记录
	 */
	@Override
	public ReturnDto getreturnbyid(String id) {
		
		return returndao.selectreturnbyid(id);
	}
	/**
	 * 编辑审核页面
	 */
	@Override
	public int edit(ReturnDto returndto) {
		
		return returndao.updateByPrimaryKeySelective(returndto);
	}

}
