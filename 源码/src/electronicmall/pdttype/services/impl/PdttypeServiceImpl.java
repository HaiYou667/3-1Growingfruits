package edu.etime.electronicmall.pdttype.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.electronicmall.dao.PdtTypeMapper;
import edu.etime.electronicmall.entities.PdtType;
import edu.etime.electronicmall.pdttype.services.interfaces.PdttypeService;

@Service
public class PdttypeServiceImpl implements PdttypeService{
	
	@Autowired
	private PdtTypeMapper ptdao;
	
	/**
	 * 商品类型增加页面
	 */
	@Override
	public int insert(PdtType pdtType) {
		return ptdao.insert(pdtType);
	}

	/**
	 * 查询商品类型
	 */
	@Override
	public List<PdtType> selectpdtype(PdtType pdtType) {
		return ptdao.selectpdtype(pdtType);
	}
	/**
	 * 根据id查询商品类别信息
	 */
	@Override
	public PdtType selectByPrimaryKey(String id) {
		return ptdao.selectByPrimaryKey(id);
	}

	/**
	 * 修改商品类别信息
	 */
	@Override
	public int updateByPrimaryKeySelective(PdtType pdtType) {
		return ptdao.updateByPrimaryKeySelective(pdtType);
	}

}
